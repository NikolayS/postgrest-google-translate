create or replace function v2.google_translate_array(source char(2), target char(2), q json) returns text[] as $$
    select * from google_translate.google_translate_array(source, target, q);
$$ language sql security definer;

create or replace function v2.google_translate(source char(2), target char(2), q text) returns text as $$
    select * from google_translate.google_translate(source, target, q);
$$ language sql security definer;

grant execute on function v2.google_translate_array(char, char, json) to apiuser;
grant execute on function v2.google_translate(char, char, text) to apiuser;