# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rake::Task['db:drop'].invoke
Rake::Task['db:create'].invoke
Rake::Task['db:migrate'].invoke

@image_path = "public/uploads/"

def image (file_name)
  File.open(File.join(Rails.root, @image_path + file_name))
end

articles = [
  {
    title: "Просто пиши сценарии",
    paragraph: "dramatist – это отличный инструмент для написания вашего сценария",
    image: image('imacmockup.png') ,
  },
  {
    title: "Погрузись полностью 📝",
    paragraph: "Сценарий – это не только работа с идеей, но и работа с отступами и большим объемом текста. Это стандартные правила оформления, которые отвлекают от работы над самим сюжетом. ",
    image: image('scenario.png'),
  },
  {
    title: "Удобный формат ✔️",
    paragraph: "Мы предлагаем сервис, в котором вы пишете свой сценарий как обычные заметки – с заголовками и основным текстом. Этот текст лёгок для восприятия и написан тем размером шрифта, который вам удобен. ",
    image: image('script.png'),
  },
  {
    title: "Не нужно ставить отступы вручную 👍️",
    paragraph: "Сервис сам конвертирует написанный сценарий в стандартный формат и выстроит все отступы, разграничив переходы камеры, действия и диалоги.",
    image: image('imacmockup.png'),
  },
  {
    title: "Приложение помнит 👀 все за вас",
    paragraph: "Карточки персонажей или локаций созданы для того, чтобы быстро вспомнить характеристику того или иного персонажа или места.",
    image: image('cards.png'),
  },
  {
    title: "Быстрый ⚡ доступ к сценариям",
    paragraph: "В мобильной версии можно быстро️ просматривать и редактировать сценарии.",
    image: image('phonemockup.png'),
  },
  {
    title: "Интерфейс, к которому не нужно привыкать 👌",
    paragraph: "Мы используем привычные паттерны в дизайне для решения проблем сценаристов.",
    image: image('interface.png'),
  },
  {
    title: "Пиши сценарии просто",
    paragraph: "Наша миссия – помочь сценаристам быстрее управляться с работой и сделать процесс написания сценария проще и нагляднее для начинающих.",
    image: image('macbooksmockup.png'),
  },
]

articles.each do |ar|
  a = Article.create!(ar)
  puts a.title
end
