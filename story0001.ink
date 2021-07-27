// https://github.com/inkle/ink/blob/master/Documentation/WritingWithInk.md
// 是否活着
VAR isLive = true
// Character variables. We track just two, using a +/- scale
VAR think = 0 // 思考
VAR wisdom = 0
VAR feeling = 0
VAR friendship = 0

VAR forceful = 0 // 决断
VAR evasive = 0  // 迟疑
// Inventory Items
VAR teacup = false
// Story states: these can be done using read counts of knots;
// or functions that collect up more complex logic; 
VAR thinked = false
VAR winned = false
VAR seen = false

// DEBUG mode adds a few shortcuts - remember to set to false in release!
VAR DEBUG = false
{DEBUG:
	IN DEBUG MODE!
	*	[Beginning...]	-> start
- else:
	// First diversion: where do we begin?
 -> start
}

=== function lower(ref x)
    ~ x = x - 1

=== function add(ref x)
    ~ x = x + 1


=== start === 
## scifi cc image https://search.creativecommons.org/photos/0fc375d7-5d06-42c5-ba2f-617859a921b4
# IMAGE: https:\/\/live.staticflickr.com/2405/2999988870_25b93ac017_b.jpg
// Once upon a time...
你醒来，忘了自己是谁，来自哪里... 听见一个声音说，你要做什么？
-> init

=== init ===
- (opts1) 
    + (think1) [...{think1:继续|}思考]
        ~ add(think)
        ~ add(wisdom)
        ~ thinked = true
        -> opts1
    + (create1) [创造一个世界]
        {think1:思考了很久，|不加思索，}
        选择创造一个世界
        -> createing1
    + (join1) [加入一个世界]
        {think1:思考良久，|毫不犹豫，}你想加入一个世界
        -> joining1

- ... -> s1

=== createing1 ===
- 计算宇宙参数中....
~ add(wisdom)
~ add(feeling)
- {joining1: 创世完成，但你已经无心于这个新世界 | 创世失败 }
- {joining1: ... -> s1 | 加入一个其他的世界 -> joining1}


=== joining1 ===
- 选择你想加入的世界：
* 春秋战国时期 -> chunqiu
* 古希腊 -> guxila
* 文艺复兴时期 -> wenyifuxing
* 20世纪初 -> 1900s
* 公元2022年 -> 2022year
* 公元2500年 -> 2500year
* 公元3077年 -> 3077year
+ 没有找到要加入的世界 -> s1

=== chunqiu ===
- 选择你的初始职业：
* 文士 -> kongzhi
* 隐者 -> zhuangzhi
* 法士 -> guanzhong
* 武士 -> mozi
// * 辩者 名家 纵横家 -> s1
// * 方士 阴阳家 -> s1
* 诗人 -> quyuan


=== kongzhi ===
- 孔子走过来，说：“朝闻道，夕死可矣。”，你回答：
    + 知之為知之，不知為不知，是知也。 
    ~ add(wisdom)
    * 有朋自远方来，不亦乐乎？
    ~ add(friendship)
    * 樂而不淫，哀而不傷。
    * 人不知而不愠，不亦君子乎？
    * 己所不欲，勿施于人。
~ add(feeling)
- 孟子加入你的队伍。
- -> guxila

=== zhuangzhi ===
- 庄子走过来，说：“天地与我并生，而万物与我为一。”，你回答：
    + 吾生也有涯，而知也无涯。以有涯随无涯，殆已! 
    ~ add(wisdom)
    * 相濡以沫，不如相忘于江湖。
    ~ add(friendship)
    * 圣人不死，大盗不止。
    * 往矣！吾将曳尾于涂中。
    * 子非鱼，安知鱼之乐？
~ add(feeling)
- 老子加入你的队伍。
- -> guxila

=== guanzhong ===
- 管仲走过来，说：“四维不张，国乃灭亡。”，你回答：
    + 仓廪实而知礼节，衣食足而知荣辱。
    ~ add(wisdom)
    * 生我者父母，知我者鲍子也。
    ~ add(friendship)
    * 下令如流水之原，令顺民心。
~ add(feeling)
- 韩非加入你的队伍。
- -> guxila

=== mozi ===
- 墨子走过来，说：“兴天下之利，除天下之害。”，你回答：
    + 法不仁，不可以为法。
    ~ add(wisdom)
    * 天下兼相爱则治，相恶则乱。
    ~ add(friendship)
    * 志不强者智不达。
~ add(feeling)
- 禽滑釐加入你的队伍。
- -> guxila


=== quyuan ===
- 屈原走过来，说：“路漫漫其修远兮，吾将上下而求索。”，你回答：
    + 尺有所短；寸有所长。物有所不足；智有所不明。
    ~ add(wisdom)
    * 长太息以掩涕兮，哀民生之多艰。
    ~ add(friendship)
    * 新沐者必弹冠，新浴者必振衣。
~ add(feeling)
- 先秦无名氏加入你的队伍。
- -> guxila

=== guxila ===
- 来到古希腊，你走向：
    + 亞里斯多德
    ~ add(wisdom)
    * 荷马
    ~ add(friendship)
    * 蘇格拉底
    * 柏拉圖
~ add(feeling)
- 一番交谈后，欧几里得加入你的队伍。
- -> wenyifuxing

=== wenyifuxing ===
- 来到中世纪晚期的佛罗伦萨，你走向：
    + 哥白尼
    ~ add(wisdom)
    * 莎士比亞
    ~ add(friendship)
    * 达芬奇
    * 哥倫布
~ add(feeling)
- 一番交谈后，但丁加入你的队伍。
- -> 1900s

=== 1900s ===
- 来到20世纪初，你走向：
    + 爱因斯坦
    ~ add(wisdom)
    * 泰戈尔
    ~ add(friendship)
    * 图灵
~ add(feeling)
- 一番交谈后，薛定谔加入你的队伍。
- -> 2022year

=== 2022year ===
- 来到2022年，你依然一事无成，你选择了：
    + 去往火星的飞船
    ~ add(wisdom)
    * 脑机接口
    ~ add(friendship)
    * 打开手机
~ add(feeling)
一番交谈后，薛定谔加入你的队伍。
- -> 2500year

=== 2500year ===
- 来到2500年，你依然茫然，人类分裂成无数的世界，你选择了：
    * 猎户座飞船
    ~ add(wisdom)
    * 异托邦元宇宙
    ~ add(friendship)
    * 美丽新世界
    * 赛博朋克
    * “自然选择号”飞船
    * 地球🌏
~ add(feeling)
AI智子加入你的队伍。
- -> 3077year

=== 3077year ===
- 来到3077年，你依然茫然... 你想...
- {createing1: ... -> s1 | 创造一个世界 -> createing1}
- -> s1

=== s1 ===
...
-> s1e1
= s1e1

{isLive:
    你还活着
- else:
    你挂了
}

- 你的智慧值为 {wisdom}
- 你的朋友数为{friendship}
- 你的情商为{feeling}0000
- 你{thinked:思考过，|.}{createing1:创造过，|.}{joining1:游历过，|.}
- 这个宇宙终结了，但故事在另一个时空还将继续...
- ~ lower(friendship)
{ friendship < 1:
	- -> END
}

+ 重新开始 -> init
- -> END
