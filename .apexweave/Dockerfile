ARG APEXWEAVE_STACK=ruby:3.3
FROM registry.apexweaveapp.com:5000/apexweave-stack-${APEXWEAVE_STACK}
COPY Gemfile* ./
RUN --mount=type=cache,target=/usr/local/bundle/cache sh /opt/apexweave/build.sh
COPY . .
RUN sh /opt/apexweave/fix-lockfile.sh && if [ -f "bin/rails" ]; then RAILS_ENV=production SECRET_KEY_BASE=placeholder bundle exec rails assets:precompile 2>/dev/null || true; fi
EXPOSE 3000
HEALTHCHECK --interval=10s --timeout=5s --start-period=30s --retries=3 CMD curl -s -o /dev/null http://localhost:3000/ || exit 1
CMD ["sh", "/opt/apexweave/start.sh"]