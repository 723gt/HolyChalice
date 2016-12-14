# HolyChalice  
[SamurAI Coding 2016-17](http://samuraicoding.info/index-jp.html) で使う予定のライブラリ  

# メソッド  
* initialize
  - ゲームスタート時の初期化をするメソッド  
  - インスタンス変数  
    - @turn_status : ターン数を格納  
    - @field_status : フィールド情報を格納  
    - @ally_lancer : 自軍の槍の状態  
    - @ally_saber : 自軍の刀の状態      
    - @ally_berserker : 自軍の鉞の状態  
    - @enemy_lancer : 相手の槍の状態   
    - @enemy_saber : 相手の刀の状態  
    - @enemy_berserker : 相手の鉞の状態  
  
* turn_info  
  - 標準入出力で渡されたゲーム情報を解析、格納するメソッド  

* get_data
  - 標準入力を受け取り返すメソッド  

* get_myberserker  
  - 自軍の鉞の状態を返すメソッド  

* get_lancer  
  - 自軍の槍の状態を返すメソッド  

* get_saber  
  - 自軍の刀の状態を返すメソッド

* get_eneberserker  
  - 相手の鉞の状態を返すメソッド  

* get_enelancer  
  - 相手の槍の状態を返すメソッド  

* get_enesaber  
  - 相手の刀の状態を返すメソッド  

* get_field  
  - フィールドの状態を返すメソッド  

* get_turn  
  - 現在のターン数を返す  