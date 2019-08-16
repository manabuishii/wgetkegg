cwlVersion: v1.0
class: Workflow

requirements:
  ScatterFeatureRequirement: {}

inputs:
  - id: keggid_file
    type: File

steps:
  read_input:
    run: splitlines.cwl
    in: 
        file: keggid_file
        splitlines: 
          default: null
    out: 
      - output
  wget:
    run: wgetkegg_tool.cwl
    scatter: keggid
    in: 
      keggid: read_input/output
    out:
      - out
outputs: []