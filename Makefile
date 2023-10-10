.PHONY: preview
preview:
	quarto preview

.PHONY: render
render:
	quarto render index.qmd
	
.PHONY: deploy
deploy: clean
	quarto publish gh-pages

IMAGES_URL=https://cloud.uni-hamburg.de/s/DWio3wf9KwjA8ES/download
IMAGES_ARCHIVE=images.zip
IMAGES_DIR=images/

.PHONY: images
images:
	wget $(IMAGES_URL) -O $(IMAGES_ARCHIVE)
	unzip -j -o $(IMAGES_ARCHIVE) -d $(IMAGES_DIR)
	rm -f $(IMAGES_ARCHIVE)

.PHONY: clean
clean:
	rm -rf _site $(IMAGES_DIR)*