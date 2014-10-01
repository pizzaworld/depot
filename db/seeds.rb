Product.delete_all

Product.create!(
  title: 'Programming Ruby 1.9 & 2.0',
  description: %{<p>
    Ruby is the fastest growing and most exciting dynamic language
    out there. If you need to get working programs delivered fast, you
    should add Ruby to your toolbox.
  </p>},
  image_url: 'ruby.jpg',
  price: 49.95
)

Product.create!(
  title: 'Random Geek Book'
  description: %{<p>
    Really dense and mind-blowing prose.
    Blahblah blah blahblah blah, blah et blah? Blah.
  </p>},
  image_url: 'cs.jpg',
  price: 20.00
)
