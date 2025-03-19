├── build                           # 构建相关目录
│   └── sky                         # 构建相关文件
├── config                          # 配置文件目录
│   ├── config.go                   # 配置文件Go代码
│   └── config.yml                  # 配置文件YAML格式
├── deployment                      # 部署相关文档
├── dom                              # 文档目录
│   ├── auth.md                     # 身份验证相关文档
│   └── system.md                   # 系统相关文档
├── gateway                         # 网关相关目录
│   ├── build                       # 网关构建目录
│   ├── docs                        # 网关文档
│   │   ├── docs.go                 # 网关文档Go代码
│   │   ├── swagger.json            # Swagger文档JSON格式
│   │   └── swagger.yaml            # Swagger文档YAML格式
│   ├── middlewares                 # 中间件目录
│   │   └── auth_middleware.go      # 身份验证中间件
│   ├── proxy                       # 代理相关
│   │   └── proxy.go                # 代理功能实现
│   ├── router                      # 路由相关
│   │   └── router.go               # 路由配置文件
│   └── swagger                     # Swagger代码生成目录
│       └── swagger.go              # Swagger代码
├── pkg                              # 公共包目录
│   ├── grpc                         # gRPC相关功能
│   │   ├── client.go               # gRPC客户端实现
│   │   └── server.go               # gRPC服务器实现
│   ├── initialize                  # 初始化相关
│   │   └── init.go                 # 初始化文件
│   ├── middleware                  # 中间件实现
│   │   ├── circuit_middleware.go   # 熔断器中间件
│   │   ├── error_handler_middleware.go  # 错误处理中间件
│   │   ├── logger_middleware.go    # 日志中间件
│   │   ├── retry_middleware.go     # 重试中间件
│   │   ├── db_middleware.go        # 数据库相关中间件
│   │   ├── jwt_middleware.go       # JWT验证中间件
│   │   └── recovery_middleware.go  # 恢复中间件
│   └── shutdown                    # 关机/退出处理
│       └── shutdown.go             # 关机处理
├── proto                            # Proto文件目录
│   ├── auth                        # 身份验证相关Proto
│   │   └── auth.proto              # 身份验证服务的Proto文件
│   └── system                      # 系统相关Proto
│       ├── system_grpc.pb.go       # 生成的gRPC代码
│       ├── system.pb.go            # 生成的Protobuf代码
│       └── system.proto            # 系统服务Proto文件
├── services                         # 微服务目录
│   ├── auth                        # 身份验证服务
│   │   ├── cmd                     # 启动相关代码
│   │   │   └── main.go             # 启动入口文件
│   │   ├── controller              # 控制器相关
│   │   │   └── auth_controller.go  # 身份验证控制器
│   │   ├── dto                     # 数据传输对象
│   │   │   ├── req.go              # 请求DTO
│   │   │   └── res.go              # 响应DTO
│   │   ├── grpc                    # gRPC实现
│   │   │   ├── client.go           # gRPC客户端实现
│   │   │   └── server.go           # gRPC服务器实现
│   │   ├── module                  # 模块相关
│   │   │   └── auth_module.go      # 身份验证模块
│   │   ├── repository              # 数据库操作
│   │   │   ├── auth_repository.go  # 身份验证仓库
│   │   │   └── models              # 数据模型
│   │   │       ├── sky_auth_tokens.go  # 身份验证令牌模型
│   │   │       └── sky_auth_users.go   # 身份验证用户模型
│   │   ├── service                 # 服务逻辑
│   │   │   └── auth_service.go     # 身份验证服务逻辑
│   ├── order                       # 订单服务
│   │   └── cmd                     # 启动相关代码
│   │       └── main.go             # 启动入口文件
│   └── system                       # 系统服务
│       ├── cmd                      # 启动相关代码
│       │   └── main.go             # 启动入口文件
│       ├── controller               # 控制器相关
│       │   ├── menu_controller.go   # 菜单控制器
│       │   ├── role_controller.go   # 角色控制器
│       │   └── user_controller.go   # 用户控制器
│       ├── dto                      # 数据传输对象
│       │   ├── req.go               # 请求DTO
│       │   └── res.go               # 响应DTO
│       ├── grpc                     # gRPC实现
│       │   └── server.go            # gRPC服务器实现
│       ├── module                   # 模块相关
│       │   └── system_module.go     # 系统模块
│       ├── repository               # 数据库操作
│       │   ├── menu_repository.go   # 菜单仓库
│       │   ├── role_repository.go   # 角色仓库
│       │   ├── user_repository.go   # 用户仓库
│       │   └── models               # 数据模型
│       │       └── sky_system_user.go  # 用户数据模型
│       └── service                  # 服务逻辑
│           ├── menu_service.go      # 菜单服务逻辑
│           ├── role_service.go      # 角色服务逻辑
│           └── user_service.go      # 用户服务逻辑
├── shared                           # 公共服务包
│   ├── cache                        # 缓存相关
│   │   └── redis.go                # Redis操作
│   ├── elasticsearch                # Elasticsearch相关
│   │   └── elasticsearch.go         # Elasticsearch操作
│   ├── logger                       # 日志相关
│   │   └── logger.go                # 日志操作
│   ├── mq                           # 消息队列
│   │   └── rabbitmq.go             # RabbitMQ操作
│   ├── postgresql                   # PostgreSQL相关
│   │   └── postgres.go             # PostgreSQL操作
│   └── registerservice              # 服务注册
│       └── consul.go                # Consul服务注册
├── sql                              # SQL文件
│   ├── common_base.sql              # 公共数据库基础SQL
│   ├── sky_go_auth.sql              # 身份验证相关SQL
│   └── sky_go_system.sql            # 系统相关SQL
├── utils                            # 工具包
│   ├── crypto.go                    # 加密工具
│   ├── database                     # 数据库相关工具
│   │   ├── base.go                  # 基础数据库工具
│   │   └── query_helper.go          # 查询帮助函数
│   ├── errers.go                    # 错误处理工具
│   ├── jwt.go                       # JWT工具
│   ├── logs.go                      # 日志工具
│   ├── pagination.go                # 分页工具
│   ├── result.go                    # 结果处理工具
│   └── tool.go                      # 通用工具函数