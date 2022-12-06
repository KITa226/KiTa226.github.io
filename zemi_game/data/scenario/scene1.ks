[_tb_system_call storage=system/_scene1.ks]

[cm  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="MusMus-BGM-091.mp3"  ]
[bg  storage="title.png"  time="1000"  ]
*input_start

[edit  left="118"  top="348"  width="400"  height="80"  size="40"  maxchars="200"  name="f.name"  reflect="false"  ]
[button  storage="scene1.ks"  target="*input_submit"  graphic="start.png"  width="435"  height="113"  name="img_4"  x="103"  y="558"  _clickable_img=""  ]
[s  ]
*input_submit

[commit  ]
[cm  ]
[jump  storage="scene1.ks"  target="*input_ok"  cond="f.name!=''"  ]
[tb_start_text mode=1 ]
名前をおしえてね。[p]
[_tb_end_text]

[jump  storage="scene1.ks"  target="*input_start"  cond=""  ]
*input_ok

[tb_show_message_window  ]
[stopbgm  time="1000"  ]
[bg  time="1000"  method="crossfade"  storage="廊下.png"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="MusMus-BGM-034.mp3"  ]
[tb_start_text mode=1 ]
今日はゼミ見学の日[p]
もうすぐ３年生になるあなたは、情報収集のため早速１０階へと向かった[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="ゼミドア.png"  ]
[tb_start_text mode=1 ]
[chara_ptext name=&f.name ][p]
趙ゼミは……ここかな[p]
[_tb_end_text]

[quake  time="300"  count="5"  hmax="10"  wait="true"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_start_text mode=1 ]
[chara_ptext name=&f.name ][p]
なんだ！？[p]
[_tb_end_text]

[playbgm  volume="100"  time="1000"  loop="true"  storage="MusMus-BGM-125.mp3"  ]
[tb_start_text mode=1 ]
#趙ゼミの先輩
たいへんだ！趙先生が宇宙人に拐われたぞ！[p]
[_tb_end_text]

[glink  color="black"  storage="scene1.ks"  size="20"  text="領木ゼミの見学に行く"  x="200"  y="294"  width=""  height=""  _clickable_img=""  target="*ryouki"  ]
[glink  color="black"  storage="scene1.ks"  size="20"  text="趙先生を助けに行く"  x="209"  y="415"  width=""  height=""  _clickable_img=""  target="*tasukeru"  ]
[s  ]
*ryouki

[chara_show  name="領木先生"  time="1000"  wait="true"  storage="chara/3/領木先生_2.png"  width="1056"  height="792"  left="-233"  top="173"  reflect="false"  ]
[tb_start_text mode=1 ]
#領木先生
隣の人が拐われたみたいですけど…[p]

#
今はゼミを見学している場合じゃない！[p]
[_tb_end_text]

[chara_hide  name="領木先生"  time="1000"  wait="true"  pos_mode="true"  ]
*tasukeru

[tb_start_text mode=1 ]
#
このままではとてもゼミ選びどころではない。[p]
趙先生を助けに行こう！[p]
[chara_ptext name=&f.name ][p]
自分が行きます！[p]
#趙ゼミの先輩
そうしてくれると助かる！[p]
[_tb_end_text]

[stopbgm  time="2000"  fadeout="true"  ]
[chara_show  name="中島先生"  time="1000"  wait="true"  storage="chara/1/中島先生_2.png"  width="1112"  height="834"  left="-212"  top="154"  reflect="false"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="MusMus-BGM-108.mp3"  ]
[tb_start_text mode=1 ]
#中島先生
学科長としてこの事態、見過ごせませんね[p]
#趙ゼミの先輩
中島先生……！[p]
#中島先生
どうしても行くというのなら、このロボットを連れて行きなさい[p]
[_tb_end_text]

[chara_move  name="中島先生"  anim="false"  time="300"  effect="linear"  wait="true"  left="111"  top="136"  width="1112"  height="834"  ]
[chara_show  name="中島ロボ"  time="1000"  wait="true"  storage="chara/4/下島ロボット_(1).png"  width="600"  height="750"  left="-113"  top="274"  reflect="false"  ]
[tb_start_text mode=1 ]
#中島ロボ
ニンゲン……コウガク……[p]
#趙ゼミの先輩
こりゃあ頼もしいぞ！[p]
中島先生がデザインしたロボットだ！[p]
人間工学の授業で聞いたぞ！[p]
[_tb_end_text]

[glink  color="black"  storage="scene1.ks"  size="20"  text="ロボットを連れていく"  x="187"  y="304"  width=""  height=""  _clickable_img=""  target="*tsureteiku"  ]
[glink  color="black"  storage="scene1.ks"  size="20"  text="中島ゼミを見学する"  target="*nakashima"  x="195"  y="173"  width=""  height=""  _clickable_img=""  ]
[s  ]
*nakashima

[tb_start_text mode=1 ]
#趙ゼミの先輩
趙先生を助けてくれ！卒研を見てもらいたいんだ[p]
[_tb_end_text]

[jump  storage="scene1.ks"  target="*tsureteiku"  ]
[glink  color="black"  storage="scene1.ks"  size="20"  text="趙先生を助けに行く"  x="201"  y="259"  width=""  height=""  _clickable_img=""  target="*tsureteiku"  ]
[jump  storage="scene1.ks"  target="*tsureteiku"  ]
[glink  color="black"  storage="scene1.ks"  size="20"  text="中島ゼミを見学する"  x="201"  y="390"  width=""  height=""  _clickable_img=""  target="*nakashima2"  ]
[s  ]
*nakashima2

[tb_start_text mode=1 ]
#趙ゼミの先輩
ゼミにあるお菓子食べていいから！[p]
[_tb_end_text]

*tsureteiku

[tb_start_text mode=1 ]
#中島ロボ
ニンゲン……ニンゲン……[p]
#中島先生
フッ…早く行きなさい[p]
何事もスピードが大事ですからね…[p]
[chara_ptext name=&f.name ][p]
ありがとうございます！[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[stopbgm  time="5000"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="青空.png"  ]
[tb_start_text mode=1 ]
[chara_ptext name=&f.name ][p]
あれが宇宙船か…どうやって入ればいいんだ？[p]
[_tb_end_text]

[chara_show  name="中島ロボ"  time="1000"  wait="true"  storage="chara/4/下島ロボット_(1).png"  width="1668"  height="2224"  left="-409"  top="-30"  reflect="false"  ]
[tb_start_text mode=1 ]
#中島ロボ
ココハワレワレニマカセロ[p]
[chara_ptext name=&f.name ][p]
ロボ！[p]

[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="ビーム砲3.mp3"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[chara_hide  name="中島ロボ"  time="1000"  wait="true"  pos_mode="true"  ]
[bg  time="1000"  method="crossfade"  storage="劇場.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
#
ロボによって宇宙船へとたどり着いた[p]
[chara_ptext name=&f.name ][p]
お邪魔します！[p]

[_tb_end_text]

[chara_show  name="宇宙人"  time="1000"  wait="true"  storage="chara/6/宇宙人マイク.png"  width="1920"  height="1080"  left="-504"  top="151"  reflect="false"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="オープニング.mp3"  ]
[tb_start_text mode=1 ]
#宇宙人
史上最大趙ゼミクイズ！[p]
目指すは情報デザイン学科のアイドル趙先生が佇む趙ゼミ！[p]
神秘のベールに包まれたあなたの姿是非とも間近で拝みたい！[p]
夢と希望を胸に秘め、波瀾万丈ゼミ選び！[p]
全知全能を傾けて、勝てば優雅に趙ゼミ生活[p]
負ければあっさりハイ、それまでヨ[p]
就職実績、豊かな機材、あの趙ゼミが、嗚呼こんなにも遠いとは…！[p]
情報デザイン学科創設から16年、歴史が生み出した過酷なゲームに[p]
せいぜい苦しんでもらいましょう！[p]
思い切り楽しんでもらいましょう！[p]
さあ、大学生活の一大スペクタル、運命の知恵比べが！[p]
今！[p]
幕を開けるのです！[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="歓声と拍手.mp3"  ]
[tb_start_text mode=1 ]
#宇宙人
趙ゼミクイズ[p]
「こたえてズンズン！」[p]
司会はワタクシMCチョケラがお送りいたします[p]
まずはファーストステージに挑戦していただきます[p]
それでは参りましょう[p]
みなさんごいっしょに！[p]
[_tb_end_text]

[tb_start_text mode=1 ]
ずん！[p]
[_tb_end_text]

[tb_start_text mode=1 ]
ずん！[p]
[_tb_end_text]

[stopbgm  time="1000"  ]
[playbgm  volume="100"  time="3000"  loop="true"  storage="クイズ！考え中〜わかるかな？.mp3"  fadein="true"  ]
*quiz1

[tb_start_text mode=1 ]
#宇宙人
第一問！[p]
趙先生の好きな飲み物はどれ！？[p]
[_tb_end_text]

[glink  color="black"  storage="scene1.ks"  size="20"  text="緑茶"  target="*zannen"  x="250"  y="145"  width=""  height=""  _clickable_img=""  ]
[glink  color="black"  storage="scene1.ks"  size="20"  text="ビール"  target="*seikai"  x="240"  y="244"  width=""  height=""  _clickable_img=""  ]
[glink  color="black"  storage="scene1.ks"  size="20"  text="カレーパンサイダー"  target="*zannen"  x="179"  y="342"  width=""  height=""  _clickable_img=""  ]
[glink  color="black"  storage="scene1.ks"  size="20"  text="わからない"  target="*ritaia"  x="219"  y="440"  width=""  height=""  _clickable_img=""  ]
[s  ]
*seikai

[playse  volume="100"  time="1000"  buf="0"  storage="クイズ正解1.mp3"  clear="true"  ]
[tb_start_text mode=1 ]
#宇宙人
正解だー－！！[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="歓声と拍手.mp3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="victory.mp3"  clear="true"  ]
[playbgm  volume="100"  time="5000"  loop="true"  storage="クイズ！考え中〜わかるかな？.mp3"  fadein="true"  ]
[tb_start_text mode=1 ]
#宇宙人
セカンドステージ進出～！[p]
それではつづいて第二問！[p]
趙先生の本名はどれ？[p]
[_tb_end_text]

[glink  color="black"  storage="scene1.ks"  size="20"  text="趙彦"  x="279"  y="101"  width=""  height=""  _clickable_img=""  target="*seikai2"  ]
[glink  color="black"  storage="scene1.ks"  size="20"  text="趙新星"  target="*zannen"  x="268"  y="199"  width=""  height=""  _clickable_img=""  ]
[glink  color="black"  storage="scene1.ks"  size="20"  text="趙アキラ"  target="*zannen"  x="261"  y="303"  width=""  height=""  _clickable_img=""  ]
[glink  color="black"  storage="scene1.ks"  size="20"  text="わからない"  target="*ritaia"  x="254"  y="406"  width=""  height=""  _clickable_img=""  ]
[s  ]
*seikai2

[playse  volume="100"  time="1000"  buf="0"  storage="クイズ正解1.mp3"  clear="true"  ]
[tb_start_text mode=1 ]
#宇宙人
正解だー－！！[p]
[_tb_end_text]

[stopbgm  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="歓声と拍手.mp3"  clear="false"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="victory.mp3"  clear="false"  ]
[playbgm  volume="100"  time="5000"  loop="true"  storage="クイズ！考え中〜わかるかな？.mp3"  fadein="true"  ]
[tb_start_text mode=1 ]
#宇宙人
いよいよファイナルステージです！[p]
趙ゼミにある設備はどれ？[p]
[_tb_end_text]

[glink  color="black"  storage="scene1.ks"  size="20"  text="ＭＲＩ"  target="*zannen"  x="273"  y="105"  width=""  height=""  _clickable_img=""  ]
[glink  color="black"  storage="scene1.ks"  size="20"  text="ベッド"  target="*zannen"  x="274"  y="207"  width=""  height=""  _clickable_img=""  ]
[glink  color="black"  storage="scene1.ks"  size="20"  text="３Dプリンター"  target="*goodend"  x="240"  y="317"  width=""  height=""  _clickable_img=""  ]
[glink  color="black"  storage="scene1.ks"  size="20"  text="わからない"  target="*ritaia"  x="257"  y="432"  width=""  height=""  _clickable_img=""  ]
[s  ]
*zannen

[stopbgm  time="1000"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="罰.mp3"  clear="true"  ]
[tb_start_text mode=1 ]
#宇宙人
ざんねん！不正解！[p]
[_tb_end_text]

[jump  storage="scene1.ks"  target="*kaere"  ]
*ritaia

[tb_start_text mode=1 ]
#宇宙人
おおっとどうした挑戦者！リタイアでしょうか？[p]
[_tb_end_text]

[glink  color="black"  storage="scene1.ks"  size="20"  text="はい"  x="282"  y="227"  width=""  height=""  _clickable_img=""  target="*kaere"  ]
[glink  color="black"  storage="scene1.ks"  size="20"  text="いいえ"  target="*quiz1"  x="273"  y="306"  width=""  height=""  _clickable_img=""  ]
[s  ]
*kaere

[tb_start_text mode=1 ]
#宇宙人
ベイビー[p]
邪魔するんだったら帰ってもらうよ[p]
[_tb_end_text]

[jump  storage="scene1.ks"  target="*banded"  ]
*goodend

[stopbgm  time="1000"  ]
[tb_start_text mode=1 ]
#宇宙人
……[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="クイズ正解1.mp3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="victory.mp3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="「わぁーーっ♪」.mp3"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="エンディング.mp3"  ]
[tb_start_text mode=1 ]
#宇宙人
正解だー－－－！！[p]
なんと、ファイナルステージクリアーー！[p]
あなたには趙先生が必要なんだね……[p]
我々は他の先生を探すことにするよ[p]
ヴォン・ヴォヤージュ！[p]

[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="5000"  fadeout="true"  ]
[chara_hide  name="宇宙人"  time="1000"  wait="true"  pos_mode="true"  ]
[bg  time="1000"  method="crossfade"  storage="学校.png"  ]
[chara_show  name="趙先生"  time="1000"  wait="true"  storage="chara/5/先生立ち絵.png"  width="1920"  height="1080"  left="-600"  top="138"  reflect="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="MusMus-BGM-141.mp3"  ]
[tb_start_text mode=1 ]
#趙先生
たすけてくれてありがとう[p]
ゼミを案内してあげるよ[p]
[chara_ptext name=&f.name ][p]
はい！[p]
[_tb_end_text]

[jump  storage="scene1.ks"  target="*last"  ]
*banded

[tb_start_text mode=1 ]
#
趙先生は宇宙人に連れ去られてしまった……[p]
[_tb_end_text]

*last

[tb_start_text mode=1 ]
#
おわり[p]
[_tb_end_text]

