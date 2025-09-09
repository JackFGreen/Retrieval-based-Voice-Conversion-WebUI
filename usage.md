# 使用教程

```
uvr5_from 需要分离的音频
uvr5_to 分离后的音频
train_from 从 uvr5_to 中挑选合适的音频放进来，训练模型
infer_from 用 train_from 训练的模型 + 这里的音频 合成新的音频
infer_to 合成后的音频
```

Audacity 修剪音频

## 新建文件夹

1. mkdir usage && cd usage
2. mkdir uvr5_from && mkdir uvr5_to && mkdir train_from && mkdir infer_from && mkdir infer_to

## 分离音频

1. 输入待处理音频文件夹路径 xxx/uvr5_from
2. 选择音频
3. 输出文件夹 xxx/uvr5_to
4. wav
5. 转换

## 训练模型

使用 uvr5_to 分离后的音频训练

1. 输入实验名
2. 输入训练文件夹路径 xxx/train_from
3. rmvpe
4. 一键训练

## 合成音频

1. 推理音色，选择训练好的模型
2. 输入待处理音频文件路径 xxx/infer_from
3. rmvpe
4. 转换
5. 查看 infer_to 中合成的音频
