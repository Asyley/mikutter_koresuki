# -*- coding: utf-8 -*-

Plugin.create(:mikutter_koresuki) do
  command(
    :koresuki,
    name: 'favRT＆これすき',
    condition: -> _ { true },
    visible: true,
    role: :timeline
  ) do |opt|

    opt.messages.each { |m|
          m.favorite
          m.retweet

          string = "これすき" + rand(0..99).to_s
          Service.primary.update(:message => string)
    }

  end
end

