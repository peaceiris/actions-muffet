[![license](https://img.shields.io/github/license/peaceiris/actions-muffet.svg)](https://github.com/peaceiris/actions-muffet/blob/master/LICENSE)
[![release](https://img.shields.io/github/release/peaceiris/actions-muffet.svg)](https://github.com/peaceiris/actions-muffet/releases/latest)
[![GitHub release date](https://img.shields.io/github/release-date/peaceiris/actions-muffet.svg)](https://github.com/peaceiris/actions-muffet/releases)



## GitHub Actions for muffet

- [raviqqe/muffet: Fast website link checker in Go](https://github.com/raviqqe/muffet)

<img width="400" alt="GitHub Actions for muffet" src="./images/ogp.svg">



## Getting started

### Create `main.workflow`

```hcl
workflow "Main workflow" {
  on = "push"
  resolves = ["muffet"]
}

action "is-branch-master" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "muffet" {
  needs = "is-branch-master"
  uses = "peaceiris/actions-muffet@v0.5.3"
  args = ["https://example.com"]
}
```



## License

[MIT License - peaceiris/actions-muffet]

[MIT License - peaceiris/actions-muffet]: https://github.com/peaceiris/actions-muffet/blob/master/LICENSE



## About the author

- [peaceiris's homepage](https://peaceiris.com/)
