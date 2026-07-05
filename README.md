# homebrew-rqmd

Homebrew tap for [rqmd](https://github.com/tylern91/rqmd) — hybrid local document search (BM25 + vector + reranker + LLM query expansion) in a single static binary.

## Install

```sh
brew tap tylern91/rqmd
brew install rqmd
```

## What is rqmd?

`rqmd` indexes a directory of Markdown/text files and lets you query them with hybrid search (BM25 + vector similarity + Reciprocal Rank Fusion), optional reranking, and LLM-powered query expansion. No external services required — everything runs locally.

See the [main repo](https://github.com/tylern91/rqmd) for full documentation.
