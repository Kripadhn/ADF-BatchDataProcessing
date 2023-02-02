{
  "$schema": "http://dataflowschema.org/draft-01/dataflow",
  "type": "Microsoft.DataFlow/dataFlows",
  "name": "Data Cleansing Example",
  "properties": {
    "activities": [
      {
        "name": "Replace Null Values",
        "type": "MappingDataFlow",
        "inputs": [
          {
            "name": "InputDataset"
          }
        ],
        "outputs": [
          {
            "name": "OutputDataset"
          }
        ],
        "typeProperties": {
          "source": {
            "type": "TabularSource",
            "query": "SELECT * FROM InputDataset"
          },
          "sink": {
            "type": "TabularSink",
            "writeBehavior": "InsertOrUpdate"
          },
          "transformation": {
            "columns": [
              {
                "name": "columnName",
                "expression": "coalesce(columnName, defaultValue)"
              }
            ]
          }
        }
      }
    ],
    "inputs": [
      {
        "name": "InputDataset",
        "type": "DatasetReference",
        "properties": {
          "type": "Microsoft.DataLakeStore/AzureDataLakeStore",
          "linkedServiceName": "AzureDataLakeStoreLinkedService"
        }
      }
    ],
    "outputs": [
      {
        "name": "OutputDataset",
        "type": "DatasetReference",
        "properties": {
          "type": "Microsoft.DataLakeStore/AzureDataLakeStore",
          "linkedServiceName": "AzureDataLakeStoreLinkedService"
        }
      }
    ]
  }
}


# Here is an example of a data flow code snippet to 
# perform the data cleansing operation of replacing null values with a default value using Mapping Data Flows in ADF:

# In this example, the "Replace Null Values" activity performs the data cleansing operation using the coalesce expression in the columns
# section of the transformation property. The InputDataset is the source of the data and the OutputDataset is the location where the cleansed data will be stored.
# This code assumes that you have already created a linked service for the Azure Data Lake Store, which is named 
# "AzureDataLakeStoreLinkedService." You will need to replace "columnName" and "defaultValue" with the specific name of the column 
# and the desired default value for replacing null values.