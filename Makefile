clean:
	rm -rf empty-directory && \
	mkdir empty-directory

nocrash: clean
	cd empty-directory && \
	terraform init --from-module="../module-example"

crash: clean
	cd empty-directory && \
	terraform init --from-module="../module-with-submodule-example"
