// users message list
List userMessages = [
  {
    "id" : 1,
    "name" : "Sara Safeerina",
    "img" : "https://images.unsplash.com/photo-1561442748-c50715dc32f6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1901&q=80",
    "online" : true,
    "story" : true,
     "message" : "Apa kabar kamu hari ini?",
     "created_at" : "1:00 pm"
  },
  {
    "id" : 2,
    "name" : "Aulia Maurina",
    "img" : "https://images.unsplash.com/photo-1550546094-9835463f9f71?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
    "online" : false,
    "story" : false,
    "message" : "Selamat pagi:)",
    "created_at" : "12:00 am"
  },
  {
    "id" : 3,
    "name" : "Dinda Gracia",
    "img" : "https://images.unsplash.com/photo-1531399434264-f1ba6b24b3dd?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1047&q=80",
    "online" : false,
    "story" : true,
    "message": "Alhamdulillah kalau kamu sehat",
    "created_at" : "3:30 pm"
  },
  {
    "id" : 4,
    "name" : "Qiqi Fitri Sulaiha",
    "img" : "https://images.unsplash.com/photo-1548343874-ea7b35b1fd4a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1791&q=80",
    "online" : false,
    "story" : false,
    "message": "Yuk cari kegiatan di rumah:)",
    "created_at" : "9:00 am"
  },
  {
    "id" : 5,
    "name" : "Diru Sirrafi",
    "img" : "https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
    "online" : true,
    "story" : false,
     "message": "Mood nya baik kok",
     "created_at" : "11:25 am"
  },
  {
    "id" : 6,
    "name" : "Jeni Fabrina",
    "img" : "https://images.unsplash.com/photo-1523264939339-c89f9dadde2e?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80",
    "online" : true,
    "story" : true,
    "message": "Seneng banget aku bisa bantu",
    "created_at" : "10:00 am"
  },
  {
    "id" : 7,
    "name" : "Akbar Bimasakti",
    "img" : "https://images.unsplash.com/photo-1458696352784-ffe1f47c2edc?ixlib=rb-1.2.1&auto=format&fit=crop&w=1951&q=80",
    "online" : false,
    "story" : false,
    "message": "Makasih banyak yaa",
    "created_at" : "2:34 pm"
  },
  {
    "id" : 8,
    "name" : "Venti",
    "img" : "https://images.unsplash.com/photo-1519531591569-b84b8174b508?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "online" : false,
    "story" : true,
    "message": "Baru aja bangun nih",
    "created_at" : "1:12 am"
  }
];

// list of messages
List messages = [
      {
        "isMe" : true,
        "messageType" : 1,
        "message" : "Kemarin mood aku kurang stabil gitu",
        "profileImg" : "https://images.unsplash.com/photo-1561442748-c50715dc32f6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1901&q=80"
      },
      {
        "isMe" : true,
        "messageType" : 2,
        "message" : "Baru bangun rasanya mau nangis",
        "profileImg" : "https://images.unsplash.com/photo-1561442748-c50715dc32f6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1901&q=80"
      },
      {
        "isMe" : true,
        "messageType" : 3,
        "message" : "Tapi ga berapa lama seneengg banget gatau kenapa",
        "profileImg" : "https://images.unsplash.com/photo-1561442748-c50715dc32f6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1901&q=80"
      },
      {
        "isMe" : false,
        "messageType" : 1,
        "message" : "Wah",
        "profileImg" : "https://images.unsplash.com/photo-1561442748-c50715dc32f6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1901&q=80"
      },
      {
        "isMe" : false,
        "messageType" : 2,
        "message" : "Emang mood bangun tidur tuh ga selalu baik wkwk",
        "profileImg" : "https://images.unsplash.com/photo-1561442748-c50715dc32f6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1901&q=80"
      },
      {
        "isMe" : false,
        "messageType" : 3,
        "message" : "Senang nya habis ngapain?",
        "profileImg" : "https://images.unsplash.com/photo-1561442748-c50715dc32f6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1901&q=80"
      },
      {
        "isMe" : true,
        "messageType" : 1,
        "message" : "Tadi bantuin mama masak",
        "profileImg" : "https://images.unsplash.com/photo-1561442748-c50715dc32f6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1901&q=80"
      },
      {
        "isMe" : true,
        "messageType" : 3,
        "message" : "Terus gatau kenapa seneng bangett",
        "profileImg" : "https://images.unsplash.com/photo-1561442748-c50715dc32f6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1901&q=80"
      },
      {
        "isMe" : false,
        "messageType" : 1,
        "message" : "Nah berati kamu udah buat mamah senang itu",
        "profileImg" : "https://images.unsplash.com/photo-1561442748-c50715dc32f6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1901&q=80"
      },
      {
        "isMe" : false,
        "messageType" : 2,
        "message" : "Kebahagiaan kamu muncul dari orang lain",
        "profileImg" : "https://images.unsplash.com/photo-1561442748-c50715dc32f6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1901&q=80"
      },
      {
        "isMe" : false,
        "messageType" : 3,
        "message" : "yuk perbanyak aktivitas sosial:D",
        "profileImg" : "https://images.unsplash.com/photo-1561442748-c50715dc32f6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1901&q=80"
      },
      {
        "isMe" : true,
        "messageType" : 4,
        "message" : "Wah iya bener juga kak",
        "profileImg" : "https://images.unsplash.com/photo-1561442748-c50715dc32f6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1901&q=80"
      },
      {
        "isMe" : false,
        "messageType" : 4,
        "message" : "Kamu coba perbanyak aktivitas sama orang lain, kalau pandemi gini paling sama keluarga deh, bisa sama mama, papa, kakak, adik. Kalau bisa jangan sendirian yah!:D, pertahanin mood senang kamu hehehe",
        "profileImg" : "https://images.unsplash.com/photo-1561442748-c50715dc32f6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1901&q=80"
      }
    ];
