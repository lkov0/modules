#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { CRISPRESSO2_CRISPRESSO2 } from '../../../../modules/crispresso2/crispresso2/main.nf'

workflow test_crispresso2_crispresso2 {
    
    input = [
        [ id:'test', single_end:false ], // meta map
        file(params.test_data['sarscov2']['illumina']['test_paired_end_bam'], checkIfExists: true)
    ]

    CRISPRESSO2_CRISPRESSO2 ( input )
}
