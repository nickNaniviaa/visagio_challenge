#Fetches data from Kaggle - Make sure you have either set your kaggle credentials appropriately (env or kaggle.json)
prepare:
	$(info Installing Required Packages with pip)
	pip install -r requirements.txt
	$(info Fetching Dataset from Kaggle)
	kaggle competitions download -c _visagio-hackathon_
	mkdir data
	unzip _visagio-hackathon_.zip -d data 
	mv _visagio-hackathon_.zip data 
	$(info Fetching Done)