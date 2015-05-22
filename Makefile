LIB=github.com/dullgiulio/msgbud
BINDIR=bin
BINS=msgbud-client-xmpp

all: clean vet fmt build

build: $(LIB) $(BINS)

clean:
	rm -f $(BINDIR)/*

fmt:
	go fmt $(LIB)/...

vet:
	go vet $(LIB)/...

$(LIB):
	go build $(LIB)

$(BINS):
	go build -o $(BINDIR)/$@ $(LIB)/cmd/$@	

.PHONY: all deps build clean fmt vet
