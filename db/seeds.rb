# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create!([{
    category_no: 200,
    category_name: "家賃"
  },
  {
    category_no: 201,
    category_name: "駐車場"
  },
  {
    category_no: 202,
    category_name: "使用料"
  },
  {
    category_no: 203,
    category_name: "インターネット"
  },
  {
    category_no: 204,
    category_name: "公共料金"
  },
  {
    category_no: 205,
    category_name: "電話"
  },
  {
    category_no: 206,
    category_name: "電気"
  },
  {
    category_no: 207,
    category_name: "ガス"
  },
  {
    category_no: 208,
    category_name: "水道"
  },
  {
    category_no: 209,
    category_name: "車関係"
  },
  {
    category_no: 210,
    category_name: "燃料"
  },
  {
    category_no: 211,
    category_name: "事務用品"
  },
  {
    category_no: 212,
    category_name: "食事"
  },
  {
    category_no: 213,
    category_name: "会議時"
  }])

  Item.create!([{
    item_no: 303,
    item_name: "インターネット使用料",
    category1_id: 4,
    category2_id: 3
  },
  {
    item_no: 304,
    item_name: "電話料金",
    category1_id: 5,
    category2_id: 6
  },
  {
    item_no: 305,
    item_name: "電気料金",
    category1_id: 5,
    category2_id: 7
  },
  {
    item_no: 306,
    item_name: "ガス料金",
    category1_id: 5,
    category2_id: 8
  },
  {
    item_no: 307,
    item_name: "水道料金",
    category1_id: 5,
    category2_id: 9
  },
  {
    item_no: 308,
    item_name: "ガソリン代",
    category1_id: 10,
    category2_id: 11
  },
  {
    item_no: 309,
    item_name: "文房具",
    category1_id: 12,
    category2_id: 6
  },
  {
    item_no: 310,
    item_name: "会議食事代",
    category1_id: 13,
    category2_id: 14
  },
  {
    item_no: 300,
    item_name: "ガレージ代",
    category1_id: 10,
    category2_id: 2
  },
  {
    item_no: 999,
    item_name: "文字数テスト",
    category1_id: 1,
    category2_id: 2
  }])
