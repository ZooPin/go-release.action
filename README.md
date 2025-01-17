# Go Release Binary GitHub Action

Automate publishing Go build artifacts for GitHub releases through GitHub Actions.

## Customization

There are 2 environnement variable that you can use to customize your build

* `LDFLAGS` : Set a ldflags for compilation like `"-X main.xyz=abc"`
* `BUILDPATH` : Set a custom path for your file to compile like `cmd/project/main.go`

```yaml
on: release
name: Build
jobs:
    release-linux-386:
        name: release linux/386
        runs-on: ubuntu-latest
        steps:
            - uses: actions/checkout@master
            - name: compile and release
              uses: ngs/go-release.action@v1.0.2
              env:
                  GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
                  GOARCH: "386"
                  GOOS: linux
                  BUILDPATH: cmd/project/main.go
                  LDFLAGS: "-X main.xyz=abc"
    release-linux-amd64:
        name: release linux/amd64
        runs-on: ubuntu-latest
        steps:
            - uses: actions/checkout@master
            - name: compile and release
              uses: ngs/go-release.action@v1.0.2
              env:
                  GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
                  GOARCH: amd64
                  GOOS: linux
    release-darwin-386:
        name: release darwin/386
        runs-on: ubuntu-latest
        steps:
            - uses: actions/checkout@master
            - name: compile and release
              uses: ngs/go-release.action@v1.0.2
              env:
                  GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
                  GOARCH: "386"
                  GOOS: darwin
    release-darwin-amd64:
        name: release darwin/amd64
        runs-on: ubuntu-latest
        steps:
            - uses: actions/checkout@master
            - name: compile and release
              uses: ngs/go-release.action@v1.0.2
              env:
                  GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
                  GOARCH: amd64
                  GOOS: darwin
    release-windows-386:
        name: release windows/386
        runs-on: ubuntu-latest
        steps:
            - uses: actions/checkout@master
            - name: compile and release
              uses: ngs/go-release.action@v1.0.2
              env:
                  GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
                  GOARCH: "386"
                  GOOS: windows
    release-windows-amd64:
        name: release windows/amd64
        runs-on: ubuntu-latest
        steps:
            - uses: actions/checkout@master
            - name: compile and release
              uses: ngs/go-release.action@v1.0.2
              env:
                  GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
                  GOARCH: amd64
                  GOOS: windows
```

Thanks to [usk81](https://github.com/usk81) for the workflow syntax in yaml.