package gov.nasa.pds.validate;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import javax.xml.transform.TransformerConfigurationException;
import cucumber.StepDefs;
import gov.nasa.pds.validate.constants.TestConstants;

public class RunFeatureScenerioAsValidateFromCLI {
  public static void main(String[] args) throws IOException, TransformerConfigurationException {
    if (args.length > 2 || args.length == 0) {
      System.out.println ("usage: <issue number> <subtest>");
      System.out.println ("  <issue number> is the first column in the feature file like 1066");
      System.out.println ("  <subtest> is the second column and should be omitted if there are no subtests for the <issue number>");
      return;
    }

    ArrayList<String> validate_args = new ArrayList<String>();
    for (File file : Paths.get(TestConstants.TEST_DATA_DIR, "features").toFile().listFiles((dir, name) -> name.endsWith(".feature"))) {
      for (String line : Files.readAllLines(file.toPath())) {
        line = line.strip();
        if (line.startsWith("|")) {
          String[] scenerio = line.split("\\|");
          if (scenerio[1].strip().equals(args[0])) {
            if (args.length == 1 && !scenerio[2].strip().isBlank()) {
              System.out.println ("Scenerio " + args[0] + " requires a subtest value too.");
              return;
            }
            if (args.length == 2 && scenerio[2].strip().isBlank()) {
              System.out.println ("Scenerio " + args[0] + " does not require a subtest value.");
              return;
            }
            if (args.length == 2 && !args[1].equals(scenerio[2].strip())) continue;
            StepDefs helper = new StepDefs();
            helper.an_and(
                Integer.valueOf(scenerio[1].strip()),
                args.length == 1 ? null : Integer.valueOf(scenerio[2].strip()),
                scenerio[3].strip().substring(1, scenerio[3].strip().length()-1));
            validate_args.addAll(helper.resolveArgumentStrings(scenerio[4].strip().substring(1,scenerio[4].strip().length()-1), false));
            break;
          }
        }
      }
      if (validate_args.size() > 0) break;
    }
    if (validate_args.size() == 0) {
      System.out.print ("Could not find issue number " + args[0]);
      if (args.length == 2) System.out.print (" and subtest " + args[1]);
      System.out.println();
      return;
    }
    System.out.println ("Same as: validate " + String.join(" ", validate_args));
    if (System.getProperty("resources.home") == null) {
      System.setProperty("resources.home", TestConstants.RESOURCES_DIR);
    }
    ValidateLauncher.main(validate_args.toArray(new String[0]));
  }
}