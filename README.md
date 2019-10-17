<p align="center">
  <img src="https://avatars0.githubusercontent.com/u/44036562?s=200&v=4" alt="Logo" width="128" />
</p>

![Release version][badge_release_version]
[![Build Status][badge_build]][link_build]
[![License][badge_license]][link_license]

This is a GitHub Action to run [UPX][link_upx] on an executable file(s).

## Usage

Example:

```yaml
steps:
- name: compile test file
  run: |
    printf %s 'package main;import "fmt";func main(){fmt.Println("hi")}' > main.go
    go build -o hi main.go

- uses: tarampampam/upx-action@master
  with:
    file: 'hi'
    upx_args: '-9'
```

or:

```yaml
steps:
- name: compile test file
  run: |
    printf %s 'package main;import "fmt";func main(){fmt.Println("hi")}' > main.go
    go build -o hi main.go

- uses: tarampampam/upx-action@master
  with:
    dir: '.'
    upx_args: '-9'
```

## Support

[![Issues][badge_issues]][link_issues]
[![Issues][badge_pulls]][link_pulls]

If you will find any package errors, please, [make an issue][link_create_issue] in current repository.

## License

This is open-sourced software licensed under the [WTFPL License][link_license].

[badge_build]:https://github.com/tarampampam/upx-action/workflows/Test%20action/badge.svg
[badge_release_version]:https://img.shields.io/github/release/tarampampam/upx-action.svg?maxAge=30
[badge_license]:https://img.shields.io/github/license/tarampampam/upx-action.svg?longCache=true
[badge_issues]:https://img.shields.io/github/issues/tarampampam/upx-action.svg?maxAge=45
[badge_pulls]:https://img.shields.io/github/issues-pr/tarampampam/upx-action.svg?maxAge=45

[link_build]:https://github.com/tarampampam/upx-action/actions
[link_license]:https://github.com/tarampampam/upx-action/blob/master/LICENSE
[link_issues]:https://github.com/tarampampam/upx-action/issues
[link_create_issue]:https://github.com/tarampampam/upx-action/issues/new
[link_pulls]:https://github.com/tarampampam/upx-action/pulls

[link_upx]:https://github.com/upx/upx
