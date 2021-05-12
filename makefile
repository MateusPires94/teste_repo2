template-sync:
	git clone git@github.com:PicPay/data-science-template.git \
	&& rsync -a --exclude="models/" --exclude="README.md" --exclude="tests/" --exclude="metadata/" --exclude=".git*" --exclude=".DS_Store" data-science-template/ "$(pwd -P)" \
	&& rm -rf data-science-template
