VERSION=1.0.9

REPO=citelibre/rendezvous
build: ## Build the containers
	docker build citelibre-rendezvous -t $(REPO):ihm
	docker build citelibre-rendezvous -t $(REPO):ihm-$(VERSION)
	docker build fake-smtp -t $(REPO):fake-smtp
	docker build fake-smtp -t $(REPO):fake-smtp-$(VERSION)
	docker build matomo -t $(REPO):matomo
	docker build matomo -t $(REPO):matomo-$(VERSION)
	docker build solr -t $(REPO):solr
	docker build solr -t $(REPO):solr-$(VERSION)
	docker build mysql -t $(REPO):db
	docker build mysql -t $(REPO):db-$(VERSION)

publish: repo-login publish-latest publish-version ## Publish the `{VERSION}` ans `latest` tagged containers

publish-latest: ## Publish the `latest` tagged container
	@echo 'publish latest to $(REPO)'
	docker push $(REPO):solr
	docker push $(REPO):db
	docker push $(REPO):ihm
	docker push $(REPO):matomo
	docker push $(REPO):fake-smtp

publish-version: ## Publish the `{version}` tagged container t
	@echo 'publish $(VERSION) to $(REPO)'
	docker push $(REPO):solr-$(VERSION)
	docker push $(REPO):db-$(VERSION)
	docker push $(REPO):ihm-$(VERSION)
	docker push $(REPO):matomo-$(VERSION)
	docker push $(REPO):fake-smtp-$(VERSION)

repo-login:
	docker login
