namespace: testFolder
flow:
  name: testFlow
  workflow:
    - Sleep:
        do_external:
          d1bbf441-824a-450e-afae-2ddec0e0f35e:
            - seconds: '21'
        navigate:
          - success: SUCCESS
          - failure: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      Sleep:
        x: 125
        y: 196
        navigate:
          2358d9cf-4ecd-5f40-60ae-85f5f2c2e4f5:
            targetId: 8d3da66b-9054-97b9-c3a3-0adc1a78ed4d
            port: success
    results:
      SUCCESS:
        8d3da66b-9054-97b9-c3a3-0adc1a78ed4d:
          x: 463
          y: 177
