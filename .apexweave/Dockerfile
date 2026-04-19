ARG APEXWEAVE_STACK=ruby:3.3
FROM registry.apexweaveapp.com/apexweave-stack-${APEXWEAVE_STACK}
COPY Gemfile* ./
RUN sh /opt/apexweave/build.sh
COPY . .
RUN if [ -f "bin/rails" ]; then RAILS_ENV=production SECRET_KEY_BASE=placeholder bundle exec rails assets:precompile 2>/dev/null || true; fi
EXPOSE 3000
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 CMD curl -sf http://localhost:3000/ || exit 1
CMD ["sh", "/opt/apexweave/start.sh"]