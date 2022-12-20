// Copyright © 2020, California Institute of Technology ("Caltech").
// U.S. Government sponsorship acknowledged.
//
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
// • Redistributions of source code must retain the above copyright notice,
// this list of conditions and the following disclaimer.
// • Redistributions must reproduce the above copyright notice, this list of
// conditions and the following disclaimer in the documentation and/or other
// materials provided with the distribution.
// • Neither the name of Caltech nor its operating division, the Jet Propulsion
// Laboratory, nor the names of its contributors may be used to endorse or
// promote products derived from this software without specific prior written
// permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
// CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.

package gov.nasa.pds.validate.constants;

import java.util.Arrays;
import java.util.List;

public final class Constants {

  public static final String SCHEMATRON_SCHEMATYPENS_PATTERN =
      "href=\\\"([^=]*)\\\"( schematypens=\\\"([^=]*)\\\")[ ]*?";
  public static final int CONTENT_VAL_PROGRESS_COUNTER = 100000;

  /**
   * Pattern string up to file extension, which will be set at initialization
   */
  public static final String BUNDLE_LABEL_PATTERN_STRING = "(.*)bundle(.*)\\.";
  public static final String COLLECTION_LABEL_PATTERN_STRING = "(.*)collection(.*)\\.";
  public static final String COLLECTION_NAME_TOKEN = "collection";
  public static final String BUNDLE_NAME_TOKEN = "bundle";
  public static final String DEFAULT_LABEL_EXTENSION = "xml"; // Used to look for label files. Note
                                                              // that the extension
                                                              // does not contain the dot.
  public static final List<String> ALLOWABLE_LABEL_EXTENSIONS = Arrays.asList("xml", "lblx");

}