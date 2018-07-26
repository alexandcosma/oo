namespace: testFolder
flow:
  name: testFlow
  workflow:
    - sleep_1:
        do:
          io.cloudslang.base.utils.sleep:
            - seconds: '5'
        publish:
          - customInput: '5'
        navigate:
          - SUCCESS: sleep
          - FAILURE: on_failure
    - sleep:
        do:
          io.cloudslang.base.utils.sleep:
            - seconds: '${customInput}'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      sleep_1:
        x: 100
        y: 150
      sleep:
        x: 400
        y: 150
        navigate:
          4ad40f4a-182b-ec60-9438-8f2aa803bba5:
            targetId: 880b9a5d-33af-fce0-92c1-6f661357ec9d
            port: SUCCESS
    results:
      SUCCESS:
        880b9a5d-33af-fce0-92c1-6f661357ec9d:
          x: 700
          y: 150
