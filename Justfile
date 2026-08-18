
build:
    cd documents && uv run make

deploy: build
    rsync -avz --delete documents/_build/html/ uchicago-linux:html/capp-camp/
    zip capp-camp-files.zip -r capp-camp-files/
    rsync -avz capp-camp-files.zip uchicago-linux:html/

