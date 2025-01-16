Feature: < 3.6
  Scenario Outline: NASA-PDS/validate#<issueNumber> <subtest>
    Given an <issueNumber>, <subtest>, and <datasrc>
    When execute validate with <args>
    Then compare to the <expectation>.
    @pre.3.6
    Examples: 
      | issueNumber | subtest | datasrc | args | expectation |
#begin

| 817 |  | "github681" | "-t {datasrc}/ff_char_fail.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.field_value_format_precision_mismatch=1" |
| 785 |  | "github785" | "--skip-context-validation -t {datasrc}/00038_FGM_RTN.xml" | "summary:totalErrors=0,summary:totalWarnings=1,summary:messageTypes:warning.table.field_value_out_of_special_constant_min_max_range=1" |
| 781 |  | "github781" | "--skip-context-validation --skip-context-validation -t {datasrc}/RSS001E01_2031066T0241_EURGRVL20XXXXXXGSFC_COV010.xml" |  |
| 755 | 1 | "github755" | "-skip-context-validation -t {datasrc}/m221011.0013.xml {datasrc}/m221011.0014.xml {datasrc}/m221011.0015.xml {datasrc}/m221011.0030.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.file_areas_duplicated_reference=1" |
| 755 | 2 | "github755" | "-skip-context-validation -t {datasrc}/m221011.0013.xml {datasrc}/m221011.0015.xml" |  |
| 754 |  | "github754" | "--skip-context-validation -t {datasrc}/Cassini_ISS_CB2_Jupiter_global_map_2.xml" |  |
| 693 |  | "github693" | "-t {datasrc}/" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.pdf.file.not_pdfa_compliant=1" |
| 690 |  | "github690" | "--skip-context-validation -t {datasrc}/rs_20160518_014000_udsc64_l3_e_v10.xml" |  |
| 684 | 1 | "github684" | "--skip-context-validation -t {datasrc}/example_params_noFileSize.xml" |  |
| 684 | 2 | "github684" | "--skip-context-validation -t {datasrc}/example_params_wFileSize.xml" |  |
| 683 |  | "github614" | "-t {datasrc}/ss__0505_0711794861_465rmo__0261222srlc10000w0__cgnj02.xml" | "summary:totalErrors=0,summary:totalWarnings=1,summary:messageTypes:warning.data_objects.out_of_order=1" |
| 681 | 1 | "github681" | "-t {datasrc}/ff_char.xml {datasrc}/ff_del.xml" |  |
| 681 | 2 | "github681" | "-t {datasrc}/ff_char_fail.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.field_value_format_precision_mismatch=1" |
| 681 | 3 | "github681" | "-t {datasrc}/ff_char_warn.xml {datasrc}/ff_del_warn.xml" | "summary:totalErrors=0,summary:totalWarnings=1,summary:messageTypes:warning.table.field_value_format_precision_mismatch=1" |
| 680 | 1 | "github680" | "--skip-context-validation -t {datasrc}/ORB12_EUR_EPHIO_reclen96.xml" |  |
| 680 | 2 | "github680" | "--skip-context-validation -t {datasrc}/ORB12_EUR_EPHIO_reclen95.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.record_length_mismatch=1" |
| 671 |  | "github671" | "--skip-context-validation -t {datasrc} -R pds4.bundle" |  |
| 652 |  | "github652" | "--skip-context-validation -t {datasrc}" |  |
| 651 |  | "github651" | "-t {datasrc}/M1431146123CC.xml" |  |
| 649 |  | "github597" | "-R pds4.collection --skip-context-validation -t {datasrc}/spice_kernels/collection_spice_kernels_v003.xml" |  |
| 644 |  | "github644" | "-t {datasrc}/scam_0072_0673327336_185_cp2_scam01072_scct_41_irsalign_____04p04.xml" |  |
| 631 |  | "github631" | "-v 1 -t {datasrc}/hyb2_tir_20180629_075501_l1.xml" |  |
| 628 |  | "github628" | "--skip-content-validation --disable-context-mismatch-warnings -t {datasrc}/mp2_flat_20061109.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1" |
| 617 |  | "github617" | "--skip-content-validation -t {datasrc}/uvis_euv_2005_159_solar_time_series_ingress.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1" |
| 616 |  | "github616" | "--skip-context-validation -t {datasrc}/mre_cal_sc_ttcp_delay_schulte_01s_2021069.xml" |  |
| 614 |  | "github614" | "-t {datasrc}/ss__0505_0711794861_465rmo__0261222srlc10000w0__cgnj02.xml" |  |
| 611 |  | "github611" | "-t {datasrc}/GRD-L1A-150313-150319_150625-BGO.xml" | "summary:totalErrors=0,summary:totalWarnings=1,summary:messageTypes:warning.table.field_value_out_of_special_constant_min_max_range=1" |
| 605 |  | "github605" | "--skip-context-validation -t {datasrc}/video_and_audio.xml" |  |
| 604 |  | "github604" | "--skip-context-validation -t {datasrc}/video.xml" |  |
| 599 | 1 | "github599" | "--skip-context-validation -t {datasrc}/AREA_Camelot_1radii.xml" |  |
| 599 | 2 | "github599" | "--skip-context-validation -x {datasrc}/PDS4_PDS_1I00.xsd -t {datasrc}/AREA_Camelot_1radii.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.schema=1" |
| 599 | 3 | "github599" | "--skip-context-validation -S {datasrc}/PDS4_PDS_1I00.sch -t {datasrc}/AREA_Camelot_1radii.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.schema=1" |
| 599 | 4 | "github599" | "--skip-context-validation -S {datasrc}/PDS4_PDS_1I00.sch -x {datasrc}/PDS4_PDS_1I00.xsd -t {datasrc}/AREA_Camelot_1radii.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.schema=1" |
| 597 | 1 | "github597" | "--skip-context-validation -R pds4.bundle -t {datasrc}" |  |
| 597 | 2 | "github562" | "-t {datasrc}" |  |
| 597 | 3 | "github561" | "-R pds4.collection --label-extension lblx --skip-context-validation -t {datasrc}" |  |
| 535 | 1 | "github535" | "-t {datasrc}/uvis_euv_2008_003_solar_time_series_ingress.xml --complete-descriptions" | "summary:totalErrors=0,summary:totalWarnings=1,summary:messageTypes:warning.data.not_described=1" |
| 535 | 2 | "github535" | "-t {datasrc}/uvis_euv_2016_288_solar_time_series_egress.xml --complete-descriptions" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.table_definition_problem=1" |
| 533 |  | "github533" | "--skip-content-validation --skip-context-validation -t {datasrc}/gggrx_1200a_shb_l420.xml" |  |
| 531 | 1 | "github531" | "--skip-context-validation -t {datasrc}/success/b.xml" |  |
| 531 | 2 | "github531" | "--skip-context-validation -t {datasrc}/fail/b.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.table_definition_problem=1" |
| 529 |  | "github529" | "--skip-context-validation -t {datasrc}/success/m0154651923f6_2p_cif_gbl.xml" |  |
| 514 |  | "github514" | "--skip-context-validation -t {datasrc}/success/8array.xml" |  |
| 499 | 1 | "github499" | "--skip-context-validation -t {datasrc}/success/M7_217_044546_N.xml" |  |
| 499 | 2 | "github499" | "--skip-context-validation -t {datasrc}/fail/M7_217_044546_N.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.missing_CRLF=1" |
| 482 | 1 | "github482" | "--skip-context-validation -e lblx -R pds4.folder -t {datasrc}/bundle1/" |  |
| 482 | 2 | "github482" | "--skip-context-validation -R pds4.folder -t {datasrc}/bundle2/" |  |
| 482 | 3 | "github482" | "--skip-context-validation -R pds4.bundle -e lblx -t {datasrc}/bundle1/bundle_kaguya_derived.lblx" |  |
| 482 | 4 | "github482" | "--skip-context-validation -R pds4.bundle -t {datasrc}/bundle2/bundle_kaguya_derived.xml" |  |
| 482 | 5 | "github482" | "--skip-context-validation -R pds4.folder -t {datasrc}/bundle1/" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.execution.no_products_found=1" |
| 482 | 6 | "github482" | "--skip-context-validation -R pds4.folder -e lblx -t {datasrc}/bundle2/" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.execution.no_products_found=1" |
| 480 | 1 | "github480" | "--skip-context-validation -t {datasrc}/test_success.xml --skip-content-validation" |  |
| 480 | 2 | "github480" | "-t {datasrc}/test_fail_header_offset.xml --skip-content-validation" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.invalid_object_definition=1" |
| 480 | 3 | "github480" | "-t {datasrc}/test_fail_table_offset.xml --skip-content-validation" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.invalid_object_definition=1" |
| 469 | 1 | "github469" | "--skip-context-validation -t {datasrc}/201401031400_rdr.xml" |  |
| 469 | 2 | "github469" | "--skip-context-validation -t {datasrc}/201401031400_rdr_max_FAIL.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.field_value_out_of_min_max_range=1" |
| 469 | 3 | "github469" | "--skip-context-validation -t {datasrc}/201401031400_rdr_min_FAIL.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.field_value_out_of_min_max_range=1" |
| 467 | 1 | "github476" | "-R pds4.label -t {datasrc}/bundle_mars2020_spice_v003.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.inventory.duplicate_lidvid=1" |
| 467 | 2 | "github476" | "-R pds4.label -t {datasrc}/collection_lab.hydrocarbon_spectra_data.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.inventory.duplicate_lidvid=1" |
| 447 |  | "github447" | "-t {datasrc}/document/" |  |
| 444 |  | "github444" | "--skip-context-validation -t {datasrc}/odya_bundle/bundle_ody_accel.xml" |  |
| 435 |  | "github435" | "-R pds4.label -t {datasrc}/flat_w.xml" |  |
| 432 |  | "github432" | "-R pds4.bundle -t {datasrc}/bundle-voyager1-pls-sat-1.0.xml" | "summary:totalErrors=0,summary:totalWarnings=1,summary:messageTypes:warning.integrity.reference_not_found=1" |
| 429 |  | "github429" | "-R pds4.label --disable-context-mismatch-warnings -t {datasrc}/EPPS_EDR_SIS.xml" |  |
| 427 |  | "github427" | "--skip-context-validation -t {datasrc}/dir%20with%20spaces/rs_20160518_014000_udsc64_l3_e_v10.xml" |  |
| 424 | 1 | "github424" | "-R pds4.label -t {datasrc}/asurpif_photos_amboycrater_v1.0_20211021_sip_v1.0.xml" |  |
| 424 | 2 | "github424" | "-R pds4.label -t {datasrc}/asurpif_photos_amboycrater_v1.0_20211021_aip_v1.0.xml" |  |
| 419 |  | "github419" | "-R pds4.label --disable-context-mismatch-warnings -t {datasrc}/bundle_astromat_chem.xml" |  |
| 416 | 1 | "github416" | "-R pds4.label -t {datasrc}/mix_raw_calib_mixs-c_sw_offset_table_20160301.xml" |  |
| 416 | 2 | "github416" | "-R pds4.label -t {datasrc}/mix_raw_calib_mixs-c_sw_offset_table_20160301_invalid.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.invalid_object_definition=1" |
| 416 | 3 | "github416" | "-R pds4.label -t {datasrc}/phe_misc_temperature_reference_20190524.xml" |  |
| 416 | 4 | "github416" | "-R pds4.label -t {datasrc}/phe_misc_temperature_reference_20190524_invalid.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.invalid_object_definition=1" |
| 408 |  | "github408" | "-R pds4.bundle --skip-content-validation -t {datasrc}/valid/bundle_insight_seis.xml" |  |
| 401 |  | "github401" | "-R pds4.bundle -t {datasrc}/invalid/bundle_kaguya_derived.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.validation.invalid_field_value=1" |
| 392 | 1 | "github392" | "-R pds4.label --skip-context-validation -t {datasrc}/test1_valid.xml" |  |
| 392 | 2 | "github392" | "-R pds4.label --skip-context-validation -t {datasrc}/test1_invalid.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.field_value_overlap=1" |
| 392 | 3 | "github392" | "-R pds4.label --skip-context-validation -t {datasrc}/INVALID_odf07155_msgr_11.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.field_value_overlap=1" |
| 380 | 1 | "github380" | "-R pds4.label --skip-context-validation --skip-context-reference-check -t {resourceDir}/github379/mix_cal_hk_fpac_report_20181204.xml" | "summary:totalErrors=0,summary:totalWarnings=3" |
| 380 | 2 | "github380" | "-R pds4.label --debug-mode --skip-context-validation --skip-context-reference-check -t {resourceDir}/github379/mix_cal_hk_fpac_report_20181204.xml" | "summary:totalErrors=0,summary:totalWarnings=3" |
| 379 |  | "github379" | "-R pds4.label --skip-context-validation --skip-context-reference-check -t {datasrc}/mix_cal_hk_fpac_report_20181204.xml" | "summary:totalErrors=0,summary:totalWarnings=3" |
| 376 |  | "github376" | "-R pds4.label -M src/test/resources/github376/urn-nasa-pds-duxbury_pdart14_mariner69.md5 -t {datasrc}/bundle_duxbury_pdart14_mariner69.xml" |  |
| 375 |  | "github375" | "-R pds4.bundle --skip-content-validation --skip-context-validation -t {datasrc}/h/bundle_gbo.ast.primass-l.spectra.xml" |  |
| 373 | 1 | "github373" | "-R pds4.bundle --skip-product-validation --skip-context-validation --skip-content-validation --skip-context-validation -t {resourceDir}/github240/valid/bundle_kaguya_derived.xml" | "summary:totalErrors=0,summary:totalWarnings=1,summary:messageTypes:warning.integrity.pds4_version_mismatch=1" |
| 373 | 2 | "github373" | "-R pds4.bundle --skip-product-validation --skip-context-validation --skip-content-validation --skip-context-validation -t {resourceDir}/github240/invalid/bundle_kaguya_derived.xml" | "summary:totalErrors=0,summary:totalWarnings=1,summary:messageTypes:warning.integrity.pds4_version_mismatch=1" |
| 368 |  | "github368" | "-R pds4.bundle --skip-context-reference-check --skip-product-validation -t {datasrc}/valid//bundle_kaguya_derived.xml" |  |
| 367 | 1 | "github367" | "-R pds4.bundle -t {datasrc}/bundle_kaguya_derived.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.pdf.file.not_pdfa_compliant=1" |
| 367 | 2 | "github367" | "-R pds4.bundle -t {datasrc}/bundle_kaguya_derived.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.file.not_jpeg_compliant=1" |
| 367 | 3 | "github367" | "-R pds4.bundle -t {datasrc}/bundle_kaguya_derived.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.file.not_png_compliant=1" |
| 367 | 4 | "github367" | "-R pds4.bundle -t {datasrc}/bundle_kaguya_derived.xml" | "summary:totalErrors=0,summary:totalWarnings=1,summary:messageTypes:warning.file.not_html_mimetype=1" |
| 367 | 5 | "github367" | "-R pds4.bundle -t {datasrc}/bundle_kaguya_derived.xml" | "summary:totalErrors=0,summary:totalWarnings=1,summary:messageTypes:warning.file.not_msword_mimetype=1" |
| 367 | 6 | "github367" | "-R pds4.bundle -t {datasrc}/bundle_kaguya_derived.xml" | "summary:totalErrors=0,summary:totalWarnings=1,summary:messageTypes:warning.file.not_msexcel_mimetype=1" |
| 367 | 7 | "github367" | "-R pds4.bundle -t {datasrc}/bundle_kaguya_derived.xml" | "summary:totalErrors=0,summary:totalWarnings=1,summary:messageTypes:warning.file.not_latex_mimetype=1" |
| 367 | 8 | "github367" | "-R pds4.bundle -t {datasrc}/bundle_kaguya_derived.xml" |  |
| 367 | 9 | "github367" | "-R pds4.bundle -t {datasrc}/bundle_kaguya_derived.xml" | "summary:totalErrors=0,summary:totalWarnings=1,summary:messageTypes:warning.file.not_encapsulated_postscript_mimetype=1" |
| 367 | 10 | "github367" | "-R pds4.bundle -t {datasrc}/bundle_kaguya_derived.xml" | "summary:totalErrors=0,summary:totalWarnings=1,summary:messageTypes:warning.file.not_gif_mimetype=1" |
| 367 | 11 | "github367" | "-R pds4.bundle -t {datasrc}/bundle_kaguya_derived.xml" | "summary:totalErrors=0,summary:totalWarnings=1,summary:messageTypes:warning.file.not_tiff_mimetype=1" |
| 367 | 12 | "github367" | "-R pds4.bundle -t {datasrc}/bundle_kaguya_derived.xml" | "summary:totalErrors=0,summary:totalWarnings=1,summary:messageTypes:warning.file.not_mp4_mimetype=1" |
| 366 | 1 | "github366" | "-R pds4.label --skip-context-validation -t {resourceDir}/github164/invalid/document_test_1_pdf.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.pdf.file.not_pdfa_compliant=1" |
| 366 | 2 | "github366" | "-R pds4.label -skip-context-validation -t {resourceDir}/github164/valid/document_pdfa_valid.xml" |  |
| 366 | 3 | "github366" | "-R pds4.label --skip-content-validation --skip-context-validation -t {resourceDir}/github164/valid/document_pdfa_valid.xml" |  |
| 364 | 1 | "github364" | "-R pds4.label --skip-product-validation --skip-context-validation --skip-content-validation -t {datasrc}//MIS000XXX_2021001T000000_DEV0_2021001T0000_RAW010.XML" |  |
| 364 | 2 | "github364" | "-R pds4.label --skip-product-validation --skip-context-validation --skip-content-validation -t {datasrc}//MIS000XXX_2021001T000000_DEV0_2021001T0000_RAW010" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.bad_extension=1" |
| 357 | 1 | "github357" | "-R pds4.label -t {datasrc}/whypointsremovedfromdata.xml" | "summary:totalErrors=0,summary:totalWarnings=2" |
| 357 | 2 | "github357" | "-R pds4.label -t {datasrc}/whypointsremovedfromdata_2240_records.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.validation.invalid_field_value=1" |
| 357 | 3 | "github357" | "-R pds4.label -t {datasrc}/whypointsremovedfromdata_2250_records.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.records_mismatch=1" |
| 357 | 4 | "github357" | "-R pds4.label -t {datasrc}/whypointsremovedfromdata_4_records.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.validation.invalid_field_value=1" |
| 356 | 1 | "github356" | "-R pds4.bundle --skip-product-validation --skip-context-validation --skip-content-validation -t {resourceDir}/github240/valid/bundle_kaguya_derived.xml" |  |
| 356 | 2 | "github356" | "-R pds4.bundle --skip-product-validation --skip-context-validation --skip-content-validation -t {resourceDir}/github240/invalid/bundle_kaguya_derived.xml" | "summary:totalErrors=0,summary:totalWarnings=1,summary:messageTypes:warning.sub_directory.unallowed_name=1" |
| 349 | 1 | "github349" | "-R pds4.label --skip-context-validation -t {datasrc}/valid/datasetgood.xml" |  |
| 349 | 2 | "github349" | "-R pds4.label --skip-context-validation -t {datasrc}/invalid/datasetbad.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.directory.unallowed_name=1" |
| 345 | 1 | "github345" | "-R pds4.label -t {datasrc}/astro_sample_t.xml" |  |
| 345 | 2 | "github345" | "-R pds4.label -t {datasrc}/astro_sample_data_t.xml" |  |
| 344 |  | "github344" | "-R pds4.bundle -t {datasrc}/bundle.xml" |  |
| 343 | 1 | "github343" | "-R pds4.label --skip-context-validation -t {datasrc}/test_data/I52_20210207_1A_U1B03A_01_0001.avgs.xml" |  |
| 343 | 2 | "github343" | "-R pds4.label --skip-context-validation -t {datasrc}/test_data/I52_20210207_1A_U1B03A_01_0001.avgs_bad.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.array.value_out_of_min_max_range=1" |
| 343 | 3 | "github343" | "-R pds4.label --skip-context-validation -t {datasrc}/test_data/I52_20210207_1A_U1B03A_01_0001.avgs_bad_noname.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.array.value_out_of_min_max_range=1" |
| 335 | 1 | "github335" | "--skip-context-validation -R pds4.label -t {datasrc}/minimal_test_product.xml" |  |
| 335 | 2 | "github335" | "--skip-context-validation -t {datasrc}/" |  |
| 334 | 1 | "github334" | "-R pds4.label -t {datasrc}/valid/pvoro_graph_eden_k91_3a_01_v01_r00.xml" |  |
| 334 | 2 | "github334" | "-R pds4.label -t {datasrc}/invalid/pvoro_graph_eden_k91_3a_01_v01_r00.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.invalid_object_definition=1" |
| 328 | 1 | "github328" | "-R pds4.bundle -t {datasrc}/valid/bundle_misc.xml" |  |
| 328 | 2 | "github328" | "-R pds4.bundle -t {datasrc}/invalid/bundle_misc.xml" |  |
| 325 |  | "github325" | "-R pds4.label -t {datasrc}/crs009x.xml" |  |
| 310 | 1 | "github310" | "-R pds4.bundle --skip-content-validation -t {datasrc}/valid/bundle.xml" |  |
| 310 | 2 | "github310" | "-R pds4.bundle --skip-content-validation -t {datasrc}/invalid/bundle.xml" |  |
| 308 | 1 | "github308" | "-R pds4.bundle -t {datasrc}/valid/bundle_kaguya_derived.xml" |  |
| 308 | 2 | "github308" | "-R pds4.bundle -t {datasrc}/invalid/bundle_kaguya_derived.xml" | "summary:totalErrors=0,summary:totalWarnings=1,summary:messageTypes:warning.integrity.unreferenced_member=1" |
| 303 | 1 | "github303" | "-R pds4.label --skip-context-validation -t {datasrc}/invalid/I52_20210207_1A_U1B03A_01_0001.avgs.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.array.bad_file_read=1" |
| 303 | 2 | "github303" | "-R pds4.label --skip-context-validation -t {datasrc}/valid/I52_20210207_1A_U1B03A_01_0001.avgs.xml" |  |
| 299 | 1 | "github299" | "-R pds4.label -t {datasrc}/valid/gbo_ast_fieber-beyer_spectra_v2.0_20210211_aip_v1.0.xml" |  |
| 299 | 2 | "github299" | "-R pds4.label -t {datasrc}/invalid/gbo_ast_fieber-beyer_spectra_v2.0_20210211_aip_v1.0.xml" | "summary:totalErrors=0,summary:totalWarnings=3" |
| 298 | 1 | "github298" | "-R pds4.label --skip-context-validation {datasrc}/valid/sentences.xml" |  |
| 298 | 2 | "github298" | "-R pds4.label --skip-context-validation {datasrc}/invalid/sentences.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.validation.invalid_field_value=1" |
| 297 | 1 | "github297" | "--skip-context-validation -R pds4.label -t {datasrc}/valid/rimfax_rdr_0081_example.xml" |  |
| 297 | 2 | "github297" | "--skip-context-validation -R pds4.label -t {datasrc}/invalid/rimfax_rdr_0081_example.xml" | "summary:totalErrors=0,summary:totalWarnings=1" |
| 294 | 1 | "github294" | "--skip-context-validation -R pds4.label -t {datasrc}/valid/minmax-error.xml" |  |
| 294 | 2 | "github294" | "--skip-context-validation -R pds4.label -t {datasrc}/invalid/minmax-error.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.records_mismatch=1" |
| 292 | 1 | "github292" | "--skip-context-validation -C {datasink}/catalog.xml -schema src/test/resources/github292/pds/v1/PDS4_PDS_1G00.xsd -schematron src/test/resources/github292/pds/v1/PDS4_PDS_1G00.sch -R pds4.label -t {datasrc}/table_delimited/kgrs_calibrated_spectra_per1_LF_VALID.xml" |  |
| 292 | 2 | "github292" | "--skip-context-validation -C {datasink}/catalog.xml -schema src/test/resources/github292/pds/v1/PDS4_PDS_1G00.xsd -schematron src/test/resources/github292/pds/v1/PDS4_PDS_1G00.sch -R pds4.label -t {datasrc}/table_delimited/kgrs_calibrated_spectra_per1_CRLF_VALID.xml" |  |
| 292 | 3 | "github292" | "--skip-context-validation -C {datasink}/catalog.xml -schema src/test/resources/github292/pds/v1/PDS4_PDS_1G00.xsd -schematron src/test/resources/github292/pds/v1/PDS4_PDS_1G00.sch -R pds4.label -t {datasrc}/table_delimited/kgrs_calibrated_spectra_per1_LF_FAIL.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.missing_LF=1" |
| 292 | 4 | "github292" | "--skip-context-validation -C {datasink}/catalog.xml -schema src/test/resources/github292/pds/v1/PDS4_PDS_1G00.xsd -schematron src/test/resources/github292/pds/v1/PDS4_PDS_1G00.sch -R pds4.label -t {datasrc}/table_delimited/kgrs_calibrated_spectra_per1_CRLF_FAIL.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.missing_CRLF=1" |
| 292 | 5 | "github292" | "--skip-context-validation -C {datasink}/catalog.xml -schema src/test/resources/github292/pds/v1/PDS4_PDS_1G00.xsd -schematron src/test/resources/github292/pds/v1/PDS4_PDS_1G00.sch -R pds4.label -t {datasrc}/table_character/valid/minimal_test_product_lf.xml" |  |
| 292 | 6 | "github292" | "--skip-context-validation -C {datasink}/catalog.xml -schema src/test/resources/github292/pds/v1/PDS4_PDS_1G00.xsd -schematron src/test/resources/github292/pds/v1/PDS4_PDS_1G00.sch -R pds4.label -t {datasrc}/table_character/valid/minimal_test_product_crlf.xml" |  |
| 292 | 7 | "github292" | "--skip-context-validation -C {datasink}/catalog.xml -schema src/test/resources/github292/pds/v1/PDS4_PDS_1G00.xsd -schematron src/test/resources/github292/pds/v1/PDS4_PDS_1G00.sch -R pds4.label -t {datasrc}/table_character/invalid/minimal_test_product_lf.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.missing_LF=1" |
| 292 | 8 | "github292" | "--skip-context-validation -C {datasink}/catalog.xml -schema src/test/resources/github292/pds/v1/PDS4_PDS_1G00.xsd -schematron src/test/resources/github292/pds/v1/PDS4_PDS_1G00.sch -R pds4.label -t {datasrc}/table_character/invalid/minimal_test_product_crlf.xml" | "summary:totalErrors=0,summary:totalWarnings=4" |
| 292 | 9 | "github292" | "--skip-context-validation -C {datasink}/catalog.xml -schema src/test/resources/github292/pds/v1/PDS4_PDS_1G00.xsd -schematron src/test/resources/github292/pds/v1/PDS4_PDS_1G00.sch -R pds4.label -t {datasrc}/inventory/collection_eetable_inventory_LF_VALID.xml" |  |
| 292 | 10 | "github292" | "--skip-context-validation -C {datasink}/catalog.xml -schema src/test/resources/github292/pds/v1/PDS4_PDS_1G00.xsd -schematron src/test/resources/github292/pds/v1/PDS4_PDS_1G00.sch -R pds4.label -t {datasrc}/inventory/collection_eetable_inventory_CRLF_VALID.xml" |  |
| 292 | 11 | "github292" | "--skip-context-validation -C {datasink}/catalog.xml -schema src/test/resources/github292/pds/v1/PDS4_PDS_1G00.xsd -schematron src/test/resources/github292/pds/v1/PDS4_PDS_1G00.sch -R pds4.label -t {datasrc}/inventory/collection_eetable_inventory_LF_FAIL.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.missing_LF=1" |
| 292 | 12 | "github292" | "--skip-context-validation -C {datasink}/catalog.xml -schema src/test/resources/github292/pds/v1/PDS4_PDS_1G00.xsd -schematron src/test/resources/github292/pds/v1/PDS4_PDS_1G00.sch -R pds4.label -t {datasrc}/inventory/collection_eetable_inventory_CRLF_FAIL.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.missing_CRLF=1" |
| 291 | 1 | "github291" | "--skip-context-validation -R pds4.bundle -t {datasrc}/valid/bundle_kaguya_derived.xml" |  |
| 291 | 2 | "github291" | "--skip-context-validation -R pds4.bundle -t {datasrc}/invalid/bundle_kaguya_derived.xml" | "summary:totalErrors=0,summary:totalWarnings=1,summary:messageTypes:warning.label.bad_schematypens=1" |
| 281 | 1 | "github281" | "-R pds4.label {datasrc}/invalid/collection_gwe_spk_invalid_1_bad_filesize.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.filesize_mismatch=1" |
| 281 | 2 | "github281" | "-R pds4.label {datasrc}/invalid/collection_gwe_spk_invalid_2_bad_checksum.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.checksum_mismatch=1" |
| 281 | 3 | "github281" | "-R pds4.label {datasrc}/invalid/collection_gwe_spk_invalid_3_bad_checksum_no_filesize.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.checksum_mismatch=1" |
| 281 | 4 | "github281" | "-R pds4.label {datasrc}/valid/collection_gwe_spk_valid_1.xml" |  |
| 281 | 5 | "github281" | "-R pds4.label {datasrc}/valid/collection_gwe_spk_valid_2_no_filesize.xml" |  |
| 281 | 6 | "github281" | "-R pds4.label {datasrc}/valid/collection_gwe_spk_valid_3_no_filesize_no_checksum.xml" |  |
| 278 | 1 | "github278" | "-R pds4.label {datasrc}/invalid/trk-2-34-revn-l5_tnf_invalid.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.context_ref_not_found=1" |
| 278 | 2 | "github278" | "-R pds4.label {datasrc}/valid/trk-2-34-revn-l5_tnf.xml" |  |
| 240 | 1 | "github240" | "-R pds4.bundle --skip-context-validation {datasrc}/valid/bundle_kaguya_derived.xml" |  |
| 240 | 2 | "github240" | "-R pds4.bundle --skip-context-validation {datasrc}/invalid/bundle_kaguya_derived.xml" | "summary:totalErrors=0,summary:totalWarnings=1,summary:messageTypes:warning.sub_directory.unallowed_name=1" |
| 230 | 1 | "github230" | "--skip-content-validation -R pds4.bundle -t {datasrc}/invalid/cocirs_c2h4abund/bundle_cocirs_c2h4abund.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.integrity.missing_version=1" |
| 230 | 2 | "github230" | "--skip-content-validation -R pds4.bundle -t {datasrc}/valid/cocirs_c2h4abund/bundle_cocirs_c2h4abund.xml" |  |
| 217 | 1 | "github217" | "-t {datasrc}/success/" |  |
| 217 | 2 | "github217" | "-t {datasrc}/fail/delmet4.xml {datasrc}/fail/binobs4.xml {datasrc}/fail/delobs4.xml {datasrc}/fail/delinv4.xml {datasrc}/fail/ascbro4.xml {datasrc}/fail/delsup4.xml {datasrc}/fail/delanc4.xml {datasrc}/fail/binanc4.xml {datasrc}/fail/binsup4.xml {datasrc}/fail/ascsup4.xml {datasrc}/fail/delbro4.xml {datasrc}/fail/ascanc4.xml {datasrc}/fail/binbro4.xml {datasrc}/fail/ascmet4.xml {datasrc}/fail/ascobs4.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.records_mismatch=1" |
| 217 | 3 | "github217" | "-t {datasrc}/fail/delmet4.xml {datasrc}/fail/binobs4.xml {datasrc}/fail/delobs4.xml {datasrc}/fail/delinv4.xml {datasrc}/fail/ascbro4.xml {datasrc}/fail/delsup4.xml {datasrc}/fail/delanc4.xml {datasrc}/fail/binanc4.xml {datasrc}/fail/binsup4.xml {datasrc}/fail/ascsup4.xml {datasrc}/fail/delbro4.xml {datasrc}/fail/ascanc4.xml {datasrc}/fail/binbro4.xml {datasrc}/fail/ascmet4.xml {datasrc}/fail/ascobs4.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.table_definition_problem=1" |
| 210 |  | "github210" | "--skip-content-validation -t {datasrc}/bundle_cassini-huygens-coradar.xml {datasrc}/BILQH07S314_D065_T008S02_V02_without_Missing_Area_tag.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1" |
| 209 | 1 | "github209" | "--disable-context-mismatch-warnings -t {datasrc}/VALID_odf07155_msgr_11.xml" |  |
| 209 | 2 | "github209" | "--disable-context-mismatch-warnings -t {datasrc}/FAIL1_overlapping_bit_fields.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.field_value_overlap=1" |
| 209 | 3 | "github209" | "--disable-context-mismatch-warnings -t {datasrc}/FAIL2_bad_stop_bit.xml" | "summary:totalErrors=2,summary:totalWarnings=0,summary:productValidation:failed=2,summary:messageTypes:error.table.field_value_overlap=1,summary:messageTypes:error.table.bad_field_read=1" |
| 190 |  | "github190" | "--skip-context-validation -t {datasrc}/validation_test.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.field_value_data_type_mismatch=1" |
| 188 |  | "github188" | "--skip-content-validation -t {datasrc}/bundle_cassini-huygens-coradar.xml {datasrc}/BILQH07S314_D065_T008S02_V02_without_Missing_Area_tag.xml" |  |
| 173 | 1 | "github173" | "--skip-context-validation -R pds4.bundle -t {datasrc}/valid/ --skip-content-validation" |  |
| 173 | 2 | "github173" | "--skip-context-validation -R pds4.bundle -t {datasrc}/invalid/ --skip-content-validation" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.records_mismatch=1" |
| 164 | 1 | "github164" | "-R pds4.label --skip-context-validation -t {datasrc}/invalid/document_test_1_pdf.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.pdf.file.not_pdfa_compliant=1" |
| 164 | 2 | "github164" | "-R pds4.label --skip-context-validation -t {datasrc}/valid/document_pdfa_valid.xml" |  |
| 153 | 1 | "github153" | "--skip-context-validation -R pds4.label -t {datasrc}/iue_asteroid_spectra/document/3juno_lwr01896_ines_fits_headers.pdfa%.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.file.name_has_invalid_characters=1" |
| 153 | 2 | "github153" | "--skip-context-validation -R pds4.label -t {datasrc}/iue_asteroid_spectra/document/collection_iue_asteroid_spectra_document.xml" |  |
| 149 | 1 | "github173" | "--skip-context-validation -t {datasrc}/valid/bundle_kaguya_derived.xml" |  |
| 149 | 2 | "github173" | "--skip-context-validation -t {datasrc}/invalid/bundle_kaguya_derived.xml" |  |
| 137 | 1 | "github137" | "-t {datasrc}/delimited_table_good.xml" |  |
| 137 | 2 | "github137" | "-t {datasrc}/delimited_table_bad.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.field_value_data_type_mismatch=1" |
| 87 |  | "github87" | "-R pds4.label --skip-content-validation -t {datasrc}/2t126632959btr0200p3002n0a1.xml {datasrc}/2t126646972btr0200p3001n0a1.xml -C {datasink}/catalog.xml" |  |
| 84 | 1 | "github84" | "--no-data-check -c {datasrc}/config.txt -t {resourceDir}/github71/ELE_MOM.xml" |  |
| 84 | 2 | "github84" | "--skip-content-validation --skip-context-validation -c {datasrc}/config.txt -t {resourceDir}/github71/ELE_MOM.xml" |  |
| 71 | 1 | "github71" | "-C {datasrc}/catalog.xml --skip-content-validation --skip-context-validation -t {datasrc}/ELE_MOM.xml" |  |
| 71 | 2 | "github71" | "-C {datasrc}/catalog.xml --skip-context-validation -t {datasrc}/ELE_MOM_2.xml" |  |
| 62 | 1 | "github62" | "-v1 --no-data-check -t {datasrc}/ele_mom_tblChar.xml" | "summary:totalErrors=0,summary:totalWarnings=0,summary:messageTypes:info.label.context_ref_found=1" |
| 62 | 2 | "github62" | "-v1 --no-data-check -t {datasrc}/spacecraft.orex_1.1.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:info.label.context_ref_found=1,summary:messageTypes:error.label.context_ref_not_found=1" |
| 57 | 1 | "github57" | "-R pds4.label --strict-field-checks --skip-context-validation -t {datasrc}/validate_57a_valid.xml" | "summary:totalErrors=5,summary:totalWarnings=0,summary:productValidation:failed=5" |
| 57 | 2 | "github57" | "-R pds4.label --skip-context-validation -t {datasrc}/validate_57a_valid.xml" |  |
| 57 | 3 | "github57" | "-R pds4.label --strict-field-checks --skip-context-validation -t {datasrc}/validate_57a_invalid.xml" | "summary:totalErrors=0,summary:totalWarnings=4" |
| 57 | 4 | "github57" | "-R pds4.label --strict-field-checks --skip-context-validation -t {datasrc}/validate_57c.xml" | "summary:totalErrors=0,summary:totalWarnings=1,summary:messageTypes:warning.table.characters_between_fields=1" |
| 51 | 1 | "github51" | "--skip-content-validation --skip-context-validation -t {datasrc}/valid" |  |
| 51 | 2 | "github51" | "-R pds4.bundle --alternate_file_paths src/test/resources/github51_additionals/additional_dir1/data_spectra,src/test/resources/github51_additionals/additional_dir2/data_spectra --skip-product-validation --skip-content-validation -t {datasrc}/valid" | "summary:totalErrors=0,summary:totalWarnings=0,summary:messageTypes:info.validation.general=1" |
| 50 | 1 | "github50" | "--skip-content-validation --skip-context-validation --target-manifest {datasink}/target-manifest.xml" |  |
| 50 | 2 | "github50" | "--target-manifest {datasink}/target-manifest.xml -t {datasrc}/ele_evt_8hr_orbit_2014-2015.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.missing_file=1" |
| 47 | 1 | "github47" | "--disable-context-mismatch-warnings -R pds4.label --skip-content-validation --skip-context-validation {datasrc}/test_context_products.xml" |  |
| 47 | 2 | "github47" | "-v1 --skip-content-validation --disable-context-mismatch-warnings -R pds4.label {datasrc}/test_context_products.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.context_ref_not_found=1" |
| 28 | 1 | "github28" | "{datasrc}/test_add_context_products.xml" | "summary:totalErrors=0,summary:totalWarnings=1" |
| 28 | 2 | "github28" | "--add-context-products {datasrc}/new_context.json -t {datasrc}/test_add_context_products.xml" |  |
| 17 | 1 | "github17" | "--skip-context-validation -R pds4.label -t {datasrc}/delimited_table_bad.xml" | "summary:totalErrors=3,summary:totalWarnings=0,summary:productValidation:failed=3" |
| 17 | 2 | "github17" | "--skip-context-validation -R pds4.label -t {datasrc}/delimited_table_good.xml" |  |
| 15 | 1 | "github15" | "-v1 --disable-context-mismatch-warnings -R pds4.label -t {datasrc}/test_check-pass_context_products.xml" |  |
| 15 | 2 | "github15" | "-v1 --disable-context-mismatch-warnings {datasrc}/test_check-no-pass_context_products.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.context_ref_not_found=1,summary:messageTypes:info.label.context_ref_mismatch=1" |
| 11 | 1 | "github11" | "-R pds4.label -t {datasrc}/test_data/science_index_bad_1.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.invalid_object_definition=1" |
| 11 | 2 | "github11" | "-R pds4.label -t {datasrc}/test_data/science_index_bad_2.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.label.invalid_object_definition=1" |
| 11 | 3 | "github11" | "-R pds4.label -t {datasrc}/test_data/science_index_good.xml" |  |
| 9 | 1 | "github09" | "-t {datasrc}/minimal_test_product_good2.xml" |  |
| 9 | 2 | "github09" | "-t {datasrc}/minimal_test_product_good.xml" |  |
| 9 | 3 | "github09" | "-t {datasrc}/csv_empty_field_test_VALID.xml" |  |
| 9 | 4 | "github09" | "-t {datasrc}/csv_empty_field_test_INVALID.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.field_value_data_type_mismatch=1" |
| 9 | 5 | "github09" | "-t {datasrc}/val9a.xml.xml" |  |
| 9 | 6 | "github09" | "-t {datasrc}/val9b.xml" | "summary:totalErrors=1,summary:totalWarnings=0,summary:productValidation:failed=1,summary:messageTypes:error.table.field_value_data_type_mismatch=1" |
| 7 |  | "github7" | "--skip-context-validation -t {datasrc}/ch2_sar_ncxs_20090107t163003745_d_sli_xx_fp_hh_pb1_19111.xml" |  |
| 6 | 1 | "github6" | "--skip-context-validation -R pds4.bundle {datasrc}/invalid/bundle_kaguya_derived.xml" | "summary:totalErrors=3,summary:totalWarnings=0,summary:productValidation:failed=3,summary:messageTypes:error.file.name_has_invalid_characters=1,summary:messageTypes:error.file.unallowed_base_name=1,summary:messageTypes:error.pdf.file.not_pdfa_compliant=1" |
| 6 | 2 | "github6" | "-R pds4.bundle --skip-context-validation {datasrc}/invalid/bundle_kaguya_derived_7.xml" | "summary:totalErrors=0,summary:totalWarnings=5,summary:messageTypes:warning.integrity.unreferenced_member=1,summary:messageTypes:warning.file.not_referenced_in_label=1,summary:messageTypes:warning.integrity.reference_not_found=1,summary:messageTypes:warning.integrity.member_not_found=1,summary:messageTypes:warning.integrity.pds4_version_mismatch=1" |
| 6 | 3 | "github6" | "-R pds4.bundle --skip-context-validation {datasrc}/valid/bundle_kaguya_derived.xml" |  |
| 5 | 1 | "github5" | "-R pds4.bundle --skip-context-validation -t {datasrc}/invalid/bundle_kaguya_derived.xml" | "summary:totalErrors=2,summary:totalWarnings=0,summary:productValidation:failed=2,summary:messageTypes:error.file.name_has_invalid_characters=1,summary:messageTypes:error.file.unallowed_base_name=1" |
| 5 | 2 | "github5" | "-R pds4.bundle --skip-context-validation -t {datasrc}/valid/bundle_kaguya_derived.xml" |  |
