# hello
使用github actions测试，已经增加了权限。测试标签发布
git commit -m "v1.0.0"只是提交了一个包含版本号的提交消息，但这不是标签推送事件。
GitHub Actions中的github.ref变量在提交推送时包含的是分支引用（如refs/heads/main），
而不是标签引用（如refs/tags/v1.0.0）。
根据搜索结果，标签推送事件需要明确的标签创建和推送操作：
git tag -a v1.0.0 -m "正式发布版本1.0.0"
git push origin v0.1
