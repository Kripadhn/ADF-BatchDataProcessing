{
  "$schema": "http://dataflowschema.org/draft-01/dataflow",
  "type": "Microsoft.DataFlow/dataFlows",
  "name": "Power BI Report Refresh",
  "properties": {
    "activities": [
      {
        "type": "PowerBIDataset",
        "typeProperties": {
          "datasetId": "<Dataset ID>",
          "reportId": "<Report ID>",
          "credential": {
            "type": "UsernamePassword",
            "username": "<Username>",
            "password": "<Password>"
          }
        },
        "inputs": [
          {
            "name": "ProcessedData",
            "type": "DatasetReference"
          }
        ],
        "outputs": [],
        "policy": {
          "timeout": "7.00:00:00",
          "retry": 0,
          "retryIntervalInSeconds": 30,
          "secureOutput": false
        },
        "name": "Refresh Power BI Report"
      }
    ],
    "inputs": [
      {
        "name": "ProcessedData",
        "type": "DatasetReference",
        "properties": {
          "type": "Microsoft.DataLakeStore/AzureDataLakeStore",
          "linkedServiceName": "AzureDataLakeStoreLinkedService"
        }
      }
    ],
    "outputs": []
  }
}
