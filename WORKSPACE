load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@gazelle//:deps.bzl", "go_repository")

local_repository(
    name = "bazel_rules_go",
    path = "bazel/go/",
)

load("@bazel_rules_go//:repos.bzl", "add_go_repos")

go_repository(
    name = "com_github_bazelbuild_bazel_gazelle",
    importpath = "github.com/bazelbuild/bazel-gazelle",
    sum = "h1:blh57YCxe3QNFbzRtEuLxaak+f5KYSQynznGnUNDRc4=",
    version = "v0.41.0",
)

go_repository(
    name = "com_github_bazelbuild_buildtools",
    importpath = "github.com/bazelbuild/buildtools",
    sum = "h1:FGzENZi+SX9I7h9xvMtRA3rel8hCEfyzSixteBgn7MU=",
    version = "v0.0.0-20240918101019-be1c24cc9a44",
)

go_repository(
    name = "com_github_bazelbuild_rules_go",
    importpath = "github.com/bazelbuild/rules_go",
    sum = "h1:/BUvuaB8MEiUA2oLPPCGtuw5V+doAYyiGTFyoSWlkrw=",
    version = "v0.50.1",
)

go_repository(
    name = "com_github_bmatcuk_doublestar_v4",
    importpath = "github.com/bmatcuk/doublestar/v4",
    sum = "h1:fdDeAqgT47acgwd9bd9HxJRDmc9UAmPpc+2m0CXv75Q=",
    version = "v4.7.1",
)

go_repository(
    name = "com_github_fsnotify_fsnotify",
    importpath = "github.com/fsnotify/fsnotify",
    sum = "h1:8JEhPFa5W2WU7YfeZzPNqzMP6Lwt7L2715Ggo0nosvA=",
    version = "v1.7.0",
)

go_repository(
    name = "com_github_golang_protobuf",
    importpath = "github.com/golang/protobuf",
    sum = "h1:LUVKkCeviFUMKqHa4tXIIij/lbhnMbP7Fn5wKdKkRh4=",
    version = "v1.5.0",
)

go_repository(
    name = "com_github_google_go_cmp",
    importpath = "github.com/google/go-cmp",
    sum = "h1:ofyhxvXcZhMsU5ulbFiLKl/XBFqE1GSq7atu8tAmTRI=",
    version = "v0.6.0",
)

go_repository(
    name = "com_github_pmezard_go_difflib",
    importpath = "github.com/pmezard/go-difflib",
    sum = "h1:4DBwDE0NGyQoBHbLQYPwSUPoCMWR5BEzIk/f1lZbAQM=",
    version = "v1.0.0",
)

go_repository(
    name = "net_starlark_go",
    importpath = "go.starlark.net",
    sum = "h1:xwwDQW5We85NaTk2APgoN9202w/l0DVGp+GZMfsrh7s=",
    version = "v0.0.0-20210223155950-e043a3d3c984",
)

go_repository(
    name = "org_golang_google_protobuf",
    importpath = "google.golang.org/protobuf",
    sum = "h1:uNO2rsAINq/JlFpSdYEKIZ0uKD/R9cpdv0T+yoGwGmI=",
    version = "v1.33.0",
)

go_repository(
    name = "org_golang_x_mod",
    importpath = "golang.org/x/mod",
    sum = "h1:utOm6MM3R3dnawAiJgn0y+xvuYRsm1RKM/4giyfDgV0=",
    version = "v0.20.0",
)

go_repository(
    name = "org_golang_x_sync",
    importpath = "golang.org/x/sync",
    sum = "h1:3NFvSEYkUoMifnESzZl15y791HH1qU2xm6eCJU5ZPXQ=",
    version = "v0.8.0",
)

go_repository(
    name = "org_golang_x_sys",
    importpath = "golang.org/x/sys",
    sum = "h1:r+8e+loiHxRqhXVl6ML1nO3l1+oFoWbnlu2Ehimmi34=",
    version = "v0.25.0",
)

go_repository(
    name = "org_golang_x_tools",
    importpath = "golang.org/x/tools",
    sum = "h1:Iey4qkscZuv0VvIt8E0neZjtPVQFSc870HQ448QgEmQ=",
    version = "v0.13.0",
)

go_repository(
    name = "org_golang_x_tools_go_vcs",
    importpath = "golang.org/x/tools/go/vcs",
    sum = "h1:cOIJqWBl99H1dH5LWizPa+0ImeeJq3t3cJjaeOWUAL4=",
    version = "v0.1.0-deprecated",
)

add_go_repos()

load("@bazel_rules_go//:def.bzl", "go_rules_deps")

go_rules_deps()
