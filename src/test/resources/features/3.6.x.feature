Feature: Running integration tests for validate module

  Scenario Outline: Execute validate command for tests below.
    Given a test <testName> at dir <testDir> at resource <resourceDir> sending report to <reportDir> with <commandArgs> as arguments
    When with test property count <messageCount> text <messageText> problem <problemEnum> reference <refOutputValue>
    When execute a validate command
    Then produced output from validate command should be similar to reference <refOutputValue> or no error reported.

    @v3.6.x
    Examples: 
      | testName                                                                                        | testDir      | messageCount | messageText                              | problemEnum                                                                                                                       | resourceDir          | reportDir     | commandArgs                                                                                                                                                                                 | refOutputValue            |
      # Validate#1008
      | "NASA-PDS/validate#1008 PDF on windows"                                                         | "github1008" |            1 | "1 errors expected"                      | "NON_PDFA_FILE"                                                                                                                   | "src/test/resources" | "target/test" | "-r {reportDir}/report_github1008.json -s json --skip-context-validation -t {resourceDir}/github1008/example.xml"                                                                           | "report_github1008.json"  |
      # Validate#992
      | "NASA-PDS/validate#992 pedantic notation"                                                       | "github992"  |            7 | "1 errors expected, 6 warnings expected" | "FIELD_VALUE_DATA_TYPE_MISMATCH,FIELD_VALUE_FORMAT_SPECIFIER_MISMATCH,FIELD_VALUE_FORMAT_PRECISION_MISMATCH,FIELD_VALUE_TOO_LONG" | "src/test/resources" | "target/test" | "-r {reportDir}/report_github992.1.json -s json --skip-context-validation -t {resourceDir}/github992/ff_char.xml"                                                                           | "report_github992.1.json" |
      | "NASA-PDS/validate#992 pedantic notation"                                                       | "github992"  |            7 | "1 errors expected, 6 warnings expected" | "FIELD_VALUE_DATA_TYPE_MISMATCH,FIELD_VALUE_FORMAT_SPECIFIER_MISMATCH,FIELD_VALUE_FORMAT_PRECISION_MISMATCH,FIELD_VALUE_TOO_LONG" | "src/test/resources" | "target/test" | "-r {reportDir}/report_github992.2.json -s json --skip-context-validation -t {resourceDir}/github992/ff_del.xml"                                                                            | "report_github992.2.json" |
      # Validate#816 (reuse validate#681 tests)
      | "NASA-PDS/validate#816 Field format FAIL: ASCII table invalid precision"                        | "github681"  |            1 | "1 errors expected"                      | "FIELD_VALID_FORMAT_PRECISION_MISMATCH"                                                                                           | "src/test/resources" | "target/test" | "-r {reportDir}/report_github681_2.json -s json -t {resourceDir}/github681/ff_char_fail.xml"                                                                                                | "report_github681_2.json" |
      | "NASA-PDS/validate#816 Field format WARNING: Precision mismatch"                                | "github681"  |            2 | "2 warnings expected"                    | "FIELD_VALUE_FORMAT_PRECISION_MISMATCH"                                                                                           | "src/test/resources" | "target/test" | "-r {reportDir}/report_github681_3.json -s json -t {resourceDir}/github681/ff_char_warn.xml {resourceDir}/github681/ff_del_warn.xml"                                                        | "report_github681_3.json" |
      # In .csv, Line1 good; L2,Field1=11.111 for %6.2f; L3,F2=22.22 for $4.2f; L4,F3=33333333 (no 'e') for %8.3e; L5,F4=4.4 for %3d
      #|"NASA-PDS/validate#816 Throw WARNING for unmatched field_format in table char" | "github816" | 5 | "1 errors expected, 4 warnings expected" | "FIELD_VALUE_FORMAT_PRECISION_MISMATCH,FIELD_VALUE_TOO_LONG,FIELD_VALUE_FORMAT_SPECIFIER_MISMATCH,FIELD_VALUE_DATA_TYPE_MISMATCH,FIELD_VALUE_FORMAT_SPECIFIER_MISMATCH" | "src/test/resources" | "target/test" | "-r {reportDir}/report_github816a.json -s json -t {resourceDir}/github816/ff_char.xml" | "report_github816a.json" |
      | "NASA-PDS/validate#816 Throw WARNING for unmatched field_format in delimited"                   | "github816"  |            5 | "1 errors expected, 4 warnings expected" | "FIELD_VALUE_FORMAT_PRECISION_MISMATCH,FIELD_VALUE_TOO_LONG,FIELD_VALUE_FORMAT_SPECIFIER_MISMATCH,FIELD_VALUE_DATA_TYPE_MISMATCH" | "src/test/resources" | "target/test" | "-r {reportDir}/report_github816b.json -s json -t {resourceDir}/github816/ff_del.xml"                                                                                                       | "report_github816b.json"  |
      # validate3.4.1 reported 0 errors or warnings.
      | "NASA-PDS/validate#822 check for unlabeled files"                                               | "github822"  |            1 | "1 errors expected"                      | "UNLABELED_FILE"                                                                                                                  | "src/test/resources" | "target/test" | "-R pds4.bundle -r {reportDir}/report_github822.json -s json -t {resourceDir}/github822"                                                                                                    | "report_github822.json"   |
      # validate3.4.1 reported ~10 fatal errors
      | "NASA-PDS/validate#823 clear file read errors"                                                  | "github823"  |            0 | "0 errors expected"                      | "totalErrors"                                                                                                                     | "src/test/resources" | "target/test" | "-r {reportDir}/report_github823.json -s json -t {resourceDir}/github823/mvn_swi_l2_onboardsvymom_20230827_v02_r01.xml"                                                                     | "report_github823.json"   |
      # Validate#823
      | "NASA-PDS/validate#823 Success process problematic floats"                                      | "github823"  |            0 | "0 errors expected"                      | "totalErrors"                                                                                                                     | "src/test/resources" | "target/test" | "-r {reportDir}/report_github823.json -s json --skip-context-validation  -t {resourceDir}/github823/mvn_swi_l2_onboardsvymom_20230827_v02_r01.xml"                                          | "report_github823.json"   |
      # validate3.4.1 complained about not PDF/A-1b even though Product_Document
      # Validate#824
      | "NASA-PDS/validate#824 Success PDF vs PDF/A"                                                    | "github824"  |            0 | "0 errors expected"                      | "totalErrors"                                                                                                                     | "src/test/resources" | "target/test" | "-r {reportDir}/report_github824.json -s json --skip-context-validation  -t {resourceDir}/github824/1203_12.xml"                                                                            | "report_github824.json"   |
      | "NASA-PDS/validate#824 clear file read errors"                                                  | "github824"  |            0 | "0 errors expected"                      | "totalErrors"                                                                                                                     | "src/test/resources" | "target/test" | "-r {reportDir}/report_github824.json -s json -t {resourceDir}/github824/1203_12.xml"                                                                                                       | "report_github824.json"   |
      # Validate#831
      | "NASA-PDS/validate#831 Success high instrument saturation"                                      | "github831"  |            0 | "0 errors expected"                      | "totalErrors"                                                                                                                     | "src/test/resources" | "target/test" | "-r {reportDir}/report_github831.json -s json --skip-context-validation  -t {resourceDir}/github831/kplo.xml"                                                                               | "report_github831.json"   |
      # validate3.4.1 WARNs that 3 values are below min even though they match other constants
      | "NASA-PDS/validate#831 Check specific constants before min or max constants"                    | "github831"  |            0 | "0 errors expected"                      | "totalErrors"                                                                                                                     | "src/test/resources" | "target/test" | "-r {reportDir}/report_github831.json -s json -t {resourceDir}/github831/kplo.xml"                                                                                                          | "report_github831.json"   |
            # Validate#837
      | "NASA-PDS/validate#837 Success match out of format constants"                                   | "github837"  |            0 | "0 errors expected"                      | "totalErrors"                                                                                                                     | "src/test/resources" | "target/test" | "-r {reportDir}/report_github837.json -s json --skip-context-validation  -t {resourceDir}/github837/times_table.xml"                                                                        | "report_github837.json"   |
      # someday line 3 in data (or line 88 of .xml) may reasonably throw an error for bad format
      | "NASA-PDS/validate#837 Check constants before data_type"                                        | "github837"  |            0 | "0 errors expected"                      | "totalErrors"                                                                                                                     | "src/test/resources" | "target/test" | "-r {reportDir}/report_github837.json -s json -t {resourceDir}/github837/x.xml"                                                                                                             | "report_github837.json"   |
      # Validate#849
      | "NASA-PDS/validate#849 Fails inventory with duplicate entries"                                  | "github849"  |            2 | "2 errors expected"                      | "INVENTORY_DUPLICATE_LIDVID"                                                                                                      | "src/test/resources" | "target/test" | "-r {reportDir}/report_github849.json -s json --skip-context-validation  -t {resourceDir}/github849/collection_uvs_data_raw.xml"                                                            | "report_github849.json"   |
      # validate3.4.1 froze on this
      | "NASA-PDS/validate#849 Fails when collection.csv has duplicates"                               | "github849"  |            1 | "1 errors expected"                      | "INVENTORY_DUPLICATE_LIDVID"                                                                                                      | "src/test/resources" | "target/test" | "-r {reportDir}/report_github849.json -s json -t {resourceDir}/github849/collection.xml"                                                                                                    | "report_github849.json"   |
      # previous versions gave no errors or warnings, which is bad
      | "NASA-PDS/validate#857 WARNING when Observing_System_Component.name mismatches context product" | "github857"  |            2 | "2 warnings expected"                    | "CONTEXT_REFERENCE_FOUND_MISMATCH_WARN"                                                                                           | "src/test/resources" | "target/test" | "-r {reportDir}/report_github857.json -s json -t {resourceDir}/github857/highi_183_istria_fam3.xml"                                                                                         | "report_github857.json"   |
      # validate3.4.1 gave no errors or warnings
      | "NASA-PDS/validate#861 WARNING when Observing_System_Component.name mismatches context product" | "github861"  |            1 | "1 warnings expected"                    | "CONTEXT_REFERENCE_FOUND_MISMATCH_WARN"                                                                                           | "src/test/resources" | "target/test" | "-r {reportDir}/report_github861.json -s json -t {resourceDir}/github861/PVO_OMAG_OEFD_ANC_ENG_0001.xml"                                                                                    | "report_github861.json"   |
      # Validate#873
      | "NASA-PDS/validate#873 Success files same name different paths"                                 | "github873"  |            0 | "0 errors expected"                      | "totalErrors"                                                                                                                     | "src/test/resources" | "target/test" | "-r {reportDir}/report_github873.json -s json --skip-context-validation -R pds4.bundle -t {resourceDir}/github873"                                                                          | "report_github873.json"   |
      # target is parent directory, not either subdir. validate3.4.1 threw ERROR
      | "NASA-PDS/validate#873 Allow same filenames in different subdirs"                               | "github873"  |            0 | "0 errors expected"                      | "totalErrors"                                                                                                                     | "src/test/resources" | "target/test" | "-r {reportDir}/report_github873.json -s json -t {resourceDir}/github873/."                                                                                                                 | "report_github873.json"   |
      # Validate#822
      #|"NASA-PDS/validate#822 Re-test to close this ticket" | "github6" | 7 | "7 warnings expected for warning.file.not_referenced_in_label." | "UNLABELED_FILE" | "src/test/resources" | "target/test" | "-R pds4.bundle -r {reportDir}/report_github6_2.json -s json {resourceDir}/github6/invalid/bundle_kaguya_derived_7.xml" | "report_github6_2.json" |
      # Validate#902
      | "NASA-PDS/validate#902 Success with windows file URL"                                           | "github902"  |            0 | "0 errors expected"                      | "totalErrors"                                                                                                                     | "src/test/resources" | "target/test" | "-r {reportDir}/report_github902.json -s json --skip-context-validation -t {resourceDir}/github902/s_00168901_thm.xml"                                                                      | "report_github902.json"   |
      # same as github873
      | "NASA-PDS/validate#902 Allow same filenames in different subdirs"                               | "github902"  |            0 | "0 errors expected"                      | "totalErrors"                                                                                                                     | "src/test/resources" | "target/test" | "-r {reportDir}/report_github902.json -s json -t {resourceDir}/github902/s_00168901_thm.xml"                                                                                                | "report_github902.json"   |
      # Validate#905
      | "NASA-PDS/validate#905 Success no duplicates in non-observational;"                             | "github905"  |            0 | "0 errors expected"                      | "totalErrors"                                                                                                                     | "src/test/resources" | "target/test" | "-r {reportDir}/report_github905.json -s json --skip-context-validation -t {resourceDir}/github905/dsn_0159-science.2008-02-29.xml {resourceDir}/github905/dsn_0159-science.2009-05-18.xml" | "report_github905.json"   |
      # validate3.4.1 throws incorrect ERROR
      | "NASA-PDS/validate#905 Allow multiple Product_Documents to point to same file"                  | "github905"  |            0 | "0 errors expected"                      | "totalErrors"                                                                                                                     | "src/test/resources" | "target/test" | "-r {reportDir}/report_github905.json -s json -t {resourceDir}/github905/."                                                                                                                 | "report_github905.json"   |
      # Validate#915
      | "NASA-PDS/validate#915 Failure context ref mismatch"                                            | "github915"  |            5 | "5 warnings expected"                    | "CONTEXT_REFERENCE_FOUND_MISMATCH_WARN"                                                                                           | "src/test/resources" | "target/test" | "-r {reportDir}/report_github915.json -s json --skip-content-validation -R pds4.collection -t {resourceDir}/github915/collection.xml"                                                       | "report_github915.json"   |
      # Validate#919
      | "NASA-PDS/validate#919 Success with 61 bit value"                                               | "github919"  |            0 | "0 errors expected"                      | "totalErrors"                                                                                                                     | "src/test/resources" | "target/test" | "-r {reportDir}/report_github919.json -s json --skip-context-validation -t {resourceDir}/github919/uh0003b_draft.xml"                                                                       | "report_github919.json"   |
      # validate3.4.1: Error while getting field value: Bit field spans bytes that are wider than a long (9 > 8)
      | "NASA-PDS/validate#919 make  --disable-context-mismatch-warnings work generally"                | "github919"  |            0 | "0 errors expected"                      | "totalErrors"                                                                                                                     | "src/test/resources" | "target/test" | "-r {reportDir}/report_github919.json -s json -t {resourceDir}/github919/uh0003b_draft.xml"                                                                                                 | "report_github919.json"   |
      # Validate#950
      | "NASA-PDS/validate#950 Disable context ref mismatch collection"                                 | "github915"  |            0 | "0 warnings expected"                    | "CONTEXT_REFERENCE_FOUND_MISMATCH_WARN"                                                                                           | "src/test/resources" | "target/test" | "-r {reportDir}/report_github950.json -s json --skip-content-validation --disable-context-mismatch-warnings -R pds4.collection -t {resourceDir}/github915/collection.xml"                   | "report_github950.json"   |
      # No old version of validate of mine had this error. Eh, too bad
      | "NASA-PDS/validate#950 make  --disable-context-mismatch-warnings work generally"                | "github950"  |            0 | "0 errors expected"                      | "totalErrors"                                                                                                                     | "src/test/resources" | "target/test" | "--disable-context-mismatch-warnings -R pds4.bundle -r {reportDir}/report_github950.json -s json -t {resourceDir}/github950"                                                                | "report_github950.json"   |

