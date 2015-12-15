after 'development:sites', 'development:categories' do
  site1 = Site.find_by!(name: 'site1')
  site1.articles.create!(
    title: 'Hello',
    body: <<-EOS.strip_heredoc,
      # Hello
      hi !

      This is first article for site 1!
    EOS
    published_at: Time.current,
    category: site1.categories.find_by!(slug: 'category1')
  )
  published_at = 3.minutes.from_now

  site1.articles.create!(
    title: "This article will appear at #{published_at}",
    body: <<-EOS.strip_heredoc,
      # Hello
      hi !

      This article will appear at #{published_at}
    EOS
    published_at: published_at,
    category: site1.categories.find_by!(slug: 'category2')
  )
end
