module "movie_review_rg" {
  source = "../../modules/resource_group"

  name        = "movie-reviews"
  environment = "production"
}

module "movie_review_static_webapp" {
  source = "../../modules/static_web_app"

  name                = "movie-reviews-frontend"
  environment         = "production"
  resource_group_name = module.movie_review_rg.resource_group_name
}