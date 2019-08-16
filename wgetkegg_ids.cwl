cwlVersion: v1.0
class: Workflow
requirements:
  ScatterFeatureRequirement: {}
doc: get KGML by multiple ids
inputs:
  keggid_list:
    type: string[]
steps:
  getkegg:
    run: wgetkegg_tool.cwl
    scatter: keggid # これにより keggid_list で指定された複数のidを１つづつ実行するようにする
    in:
      keggid: keggid_list
    out: [out]
outputs:
   - id: kgmlfile
     type: File[]
     outputSource: getkegg/out
