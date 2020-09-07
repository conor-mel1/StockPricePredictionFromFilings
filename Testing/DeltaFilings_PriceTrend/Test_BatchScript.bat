cd BalanceSheet
cd HyperparameterTuning
cd FCNN
cd ThreeHiddenLayers
echo "Balance Sheet - Running 3HL_ParamNum_AsNodes"
runipy -o 3HL_ParamNum_AsNodes.ipynb
echo "Finished Balance Sheet - 3HL_ParamNum_AsNodes.ipynb"
echo"Starting 3HL_TriangularStructure"
runipy -o 3HL_TriangularStructure.ipynb
echo "Finished Balance Sheet - 3HL_TriangularStructure
cd..
cd..
cd..
cd..
cd CashFlow
cd HyperparameterTuning
cd FCNN
cd OneHidddenLayer
echo "Cash Flow - Running 1HL_ParamNum_AsNodes"
runipy -o 1HL_ParamNum_AsNodes.ipynb
echo "Finished Cash Flow - 1HL_ParamNum_AsNodes"
echo "Starting 1HL_ParamsSquared_AsNodes"
runipy -o 1HL_ParamsSquared_AsNodes.ipynb
echo "Finished Cash Flow - 1HL_ParamsSquared_AsNodes"
cd..
cd TwoHiddenLayers
runipy -o 2HL_ParamNum_AsNodes.ipynb
runipy -o 2HL_TriangularStructure.ipynb
cd..
cd ThreeHiddenLayers
runipy -o 3HL_ParamNum_AsNodes.ipynb
runipy -o 3HL_TriangularStructure.ipynb
echo "Finished"




