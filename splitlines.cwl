cwlVersion: v1.0
class: CommandLineTool
hints:
    DockerRequirement:
        dockerPull: 3.6.9-slim
baseCommand: [python]
arguments:
  - $(inputs.splitlines)
  - $(inputs.file)
inputs:
  - id: splitlines
    type: File
    default: 
      class: File
      location: splitlines.py
  - id: file
    type: File
outputs:
  output:
    type: string[]
