cwlVersion: v1.0
class: CommandLineTool
baseCommand: [wget]
arguments:
  - -O
  - $(inputs.keggid).xml
  - http://rest.kegg.jp/get/$(inputs.keggid)/kgml
inputs:
  - id: keggid
    type: string
outputs:
  out:
    type: File
    outputBinding:
      glob: $(inputs.keggid).xml