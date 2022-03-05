require 'pagy/extras/meilisearch'

MeiliSearch::Rails.configuration = {
  meilisearch_host: ENV.fetch('MEILISEARCH_HOST') { 'http://meili:7700' },
  meilisearch_api_key: ENV.fetch('MEILISEARCH_API_KEY') { 'meiliKey' },
  timeout: 2,
  max_retries: 1
}