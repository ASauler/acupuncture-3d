# 3D 针灸大师 (3D Acupuncture Master)

基于 Three.js 的 3D 针灸学习工具，在浏览器中提供交互式人体模型与穴位查询。

## 功能

- **3D 人体模型** — 可旋转、缩放的人体模型，支持透视模式
- **362 个穴位** — 14 条经络穴位，点击查看详细信息（定位、功效、针法、归经等）
- **51 个奇穴** — 经外奇穴查询
- **经络循行动画** — 能量彗星轨迹沿经络路径流动
- **经络详情** — 各经络主治、歌诀
- **子午流注** — 实时显示当前时辰当令经络
- **考试模式** — 507 道穴位定位练习题
- **收藏夹** — 收藏常用穴位（localStorage 持久化）
- **搜索** — 按穴位名称或编码搜索

## 使用方法

启动一个本地 HTTP 服务器：

```bash
cd acupuncture
python3 -m http.server 8080
```

然后在浏览器中打开 `http://localhost:8080`。

## 项目结构

```
├── index.html          # 主应用（单文件，含所有逻辑和样式）
├── model/
│   └── corpo.obj       # 3D 人体模型 (OBJ 格式)
├── data/
│   ├── points.json     # 362 个穴位数据
│   ├── meridians.json  # 14 条经络数据
│   ├── extra.json      # 51 个奇穴数据
│   └── exam.json       # 507 道考试题
└── README.md
```

## 技术栈

- [Three.js](https://threejs.org/) v0.160.0 (ES modules via CDN)
- OBJLoader, OrbitControls, Raycaster, CatmullRomCurve3
- 纯前端，无需构建工具

## 数据来源

穴位数据提取自针灸大师 App (com.vesal.jlsx.international v3.1.4)，3D 模型来自 [acu-master](https://github.com/AcuMaster/acu-master) 开源项目。
