#include "Movie.h"
#include "assert.h"
#include "RecommenderSystemLoader.h"
#include "RSUsersLoader.h"
#include "string"

void check_geters ()
{
  Movie m1 ("Twilight", 2008);
  Movie m2 ("Titanic", 1997);
  Movie m3 ("Batman", 2022);
  int x = m3.get_name ().std::string::compare ("Batman");
  assert(m3.get_year () == 2022);
  assert(x == 0);
  assert(m1.get_year () == 2008);
};

void check_op ()
{
  Movie m1 ("Twilight", 1997);
  Movie m2 ("Titanic", 1997);
  Movie m3 ("Batman", 2022);
  Movie m4 ("Batman", 1099);

  assert((m4 < m3));
  assert(!(m3 < m4));
  assert(m2 < m1);
}

void check_getters_rs ()
{
  Movie m1 ("Twilight", 2008);
  Movie m2 ("Titanic", 1997);
  Movie m3 ("Batman", 2022);
  auto p = RecommenderSystemLoader::create_rs_from_movies_file ("../RecommenderSystemLoader_input.txt");
  auto temp1 = p->get_movie ("Titanic", 1997);
  assert(temp1->get_year () == 1997);
  auto temp2 = p->get_movie ("Asd", 2005);
  assert(!temp2);
  auto temp3 = p->get_movie ("Batman", 2024);
  assert(!temp3);

}

void check_add_rs ()
{
  std::vector<double> v1 = {4, 5, 6, 8};
  Movie m1 ("Twilight", 2008);
  Movie m2 ("Titanic", 1997);
  Movie m3 ("Batman", 2022);
  auto p = RecommenderSystemLoader::create_rs_from_movies_file ("../RecommenderSystemLoader_input.txt");
  p->add_movie ("Dorf", 2021, v1);
  auto temp1 = p->get_movie ("Dorf", 2021);
  assert(temp1->get_year () == 2021);
}

void check_users_names ()
{
  std::string rs_point = "../RecommenderSystemLoader_input.txt";
  std::vector<RSUser> users = RSUsersLoader::create_users_from_file ("../RSUsersLoader_input.txt", RecommenderSystemLoader::create_rs_from_movies_file (rs_point));
  assert(users[0].get_name () == "Sofia");
  assert(users[1].get_name () == "Michael");
  assert(users[2].get_name () == "Nicole");
  assert(users[3].get_name () == "Arik");
  assert(users.size () == 4);

};

void check_users_func ()
{
  std::string rs_point = "../RecommenderSystemLoader_input.txt";
  std::vector<RSUser> users = RSUsersLoader::create_users_from_file ("../RSUsersLoader_input.txt", RecommenderSystemLoader::create_rs_from_movies_file (rs_point));
  assert(users[2].get_recommendation_by_cf (2)->get_name () == "Titanic");
  assert(users[0].get_recommendation_by_content ()->get_name () == "Batman");

  assert(5.4 < users[2].get_prediction_score_for_movie ("Titanic", 1997, 2)
         && users[2].get_prediction_score_for_movie ("Titanic", 1997, 2)
            < 5.5);
  assert(users[2].get_prediction_score_for_movie ("Titanic", 1997, 1) == 5);
  assert(3.4 < users[2].get_prediction_score_for_movie ("Twilight", 2008, 2) &&
         users[2].get_prediction_score_for_movie ("Twilight", 2008, 2) < 3.5);
}

int main ()
{
  check_geters ();
  check_op ();
  check_getters_rs ();
  check_add_rs ();
  check_users_names ();
  check_users_func ();

  std::string rs_point = "../RecommenderSystemLoader_input.txt";
  std::vector<RSUser> users = RSUsersLoader::create_users_from_file ("../RSUsersLoader_input.txt", RecommenderSystemLoader::create_rs_from_movies_file (rs_point));
  std::cout << users[0];
}

