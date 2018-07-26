namespace: testFolder
flow:
  name: fll
  workflow:
    - random_number_generator:
        do:
          io.cloudslang.base.math.random_number_generator:
            - min: '3'
            - max: '6'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      random_number_generator:
        x: 362
        y: 204
        navigate:
          5436a7a3-ff36-e9f7-f2b8-91d94afc83f9:
            targetId: 871497ba-9b07-d21a-d8d7-9a12b83508e3
            port: SUCCESS
    results:
      SUCCESS:
        871497ba-9b07-d21a-d8d7-9a12b83508e3:
          x: 680
          y: 156
