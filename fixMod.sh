go get "github.com/projectdiscovery/goflags@v0.0.8-0.20220610073650-5d31a8c159e3"
go get github.com/projectdiscovery/retryabledns@v1.0.13
go get "github.com/cockroachdb/pebble@v0.0.0-20210728210723-48179f1d4dae"
go get "github.com/projectdiscovery/stringsutil@v0.0.0-20220612082425-0037ce9f89f3"
go get "github.com/projectdiscovery/ipranger@v0.0.3-0.20210831161617-ac80efae0961"


go mod tidy;go mod vendor
git checkout vendor/github.com/projectdiscovery/nuclei/v2/pkg/protocols/http/request.go
git checkout vendor/github.com/projectdiscovery/nuclei/v2/pkg/protocols/common/interactsh/interactsh.go
git checkout vendor/github.com/projectdiscovery/nuclei/v2

go build

git add vendor
rm -rf vendor/github.com/hktalent/goSqlite_gorm
ln -s $HOME/MyWork/goSqlite_gorm $PWD/vendor/github.com/hktalent/goSqlite_gorm


