FROM elixir:alpine

WORKDIR /backend
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez && \
    mix local.hex --force && \
    mix local.rebar --force

ADD mix.exs /backend

RUN mix deps.get --force && \
    mix compile

ADD . /backend
CMD mix phx.server
