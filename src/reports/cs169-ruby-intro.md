# CS169 hw-ruby-intro（SAAS edX 第一课 ruby 练习，SAAS edX 官方 hw-ruby-intro）

## 已通过的公开验证（2026-11-08）

验收分支 `edidada/cs169-hw`，HEAD `e56c22bc5fd105fd8cc81b79ba0e39dde772bd8e`，[Actions run](https://github.com/edidada/cs169-hw-ruby-intro/actions/runs)（branch push 成功）跑官方 34 项 rspec 示例全部通过：

- Part1：sum、max_2_sum、sum_to_n?（穿插 nil/empty 极值语义）　9 例
- Part2：hello、starts_with_consonant?、binary_multiple_of_4?（unicode 边界、二进制多四检查）　19 例
- Part3：BookInStock（isbn/price 访问器、构造期校验、price_as_string 格式　13 例）

## 实现

`lib/ruby_intro.rb`：逐题填空实现。关键实选语义：`max_2_sum` 空数组取 0、单元素求自加；`sum_to_n?` 用哈希 O(n) 两数和；`starts_with_consonant?` 用 `[^aeiou\W]` 排除元音、空白/串首非字母返回 false；`binary_multiple_of_4?` 用正则 `[01]+` + 仅 0 通过/尾两位 `00` 判定多四；`BookInStock` 构造时校验 isbn 非空、价格＞0，`price_as_string` 用 `format("%.2f", …)` 保证美元两位小数。

判分：官方 spec/part[1-3]_spec.rb 未动；CI 在 Ruby 3.3 + rspec 3.13 下以 `--format documentation` 运行。

## 边界与局限

- 这是公开 spec 的验收，不覆盖 SAAS edX Gradescore 自动评分服务器、Star 判断及其后台联动的其它 CHIP。
- 初始版本 hello 尾含 `!` 与期望不一致，1 例失败后修正；其余一次通过。结果日志附 actions/job 输出。
