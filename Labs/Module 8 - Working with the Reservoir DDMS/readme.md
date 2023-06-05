# Module 8 - Working with the Reservoir DDMS

In this lab you will explore fundamental capabilities and characteristics of the Reservoir DDMS. 

## Prerequisites
- Postman installed with the OSDU Bootcamp collection. See [README.MD](/README.md) for instructions.

## Reservoir DDMS REST API - exploring the API and consume data 
### Discover and retrieve data loaded in the Reservoir DDMS using REST API: postman 
In this lab we will use the following Postman folder: `Bootcamp > Lab Module 8 - Working with the Reservoir DDMS`

1. `Get Data Spaces List`. Currently there is one. 
2. `Get Resources List` List all resources contained in a data space. In our example, we have a Grid2d regular surface represetation of a HorizonInterpretation of a GeneticBoundary Feature, a CRS definition and a reference to the grid data array.
3. `Get All Resources` What is the name of the Feature, and what does the Grid2d represent? UUID's are used reference resources in RDDMS and externally
4. `Get Object Type` Get the objects of a certain type.
5. `Get Data Object Content` Get the actual content - either in json or xml format. Note that this part contains the meta data and object relataionships. Explore hierarchical object relationships for a seismic interpretation surface grid: 1. Feature 2. Interpretation 3. Representation 4. Properties
6. `Get Description of all Arrays` What is the reference and format to the geoemtry and/or property arrays.
7. `Get Array Content` Here we get the actual geoemtry and/or property arrays.
8. `Get Array Meta Data` Array dimensions etc.

### Discover and retrieve data loaded in the Reservoir DDMS using REST API: jupyter notebook

Download and launch the [jupyter notebook:](RDDMS_2dgrid.ipynb). Explore how resources are accessed, referenced, and the array content is visualized.

### Demo only: Use openETP client to export a RESQML epc file container with various Volve model data

PS# `docker run -it --rm  open-etp-client openETPServer space -S wss://osdubootcamp.azure-api.net -u foo -p bar -s demo/bootcamp --stats` 

PS# `docker run -it --rm -v //c/Users/.../Downloads/:/data  open-etp-client openETPServer space -S wss://osdubootcamp.azure-api.net -u foo -p bar -s demo/volve  --export-epc ./data/volve.epc`

One can import RESQML files to the RDMMS too: use `--import-epc` instead. 
Can you discover it via postman or jupyter notebook?

## Congratulations! You have now completed the module!
