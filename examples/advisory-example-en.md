# Real-World Interaction Example (English)

This example illustrates how the Agent autonomously evaluates a high-complexity user request requiring multi-role verification and outputs the standardized advisory block before normal dialogue.

---

### User Prompt:
> "I want to build an enterprise-grade lightweight RAG knowledge base studio (RAG-Studio). It needs a BM25 + Dense vector hybrid retrieval and reranking engine, an interactive responsive frontend dashboard showing recall metrics, and headless browser automated end-to-end testing to ensure zero console errors."

---

### Agent Response:

> 💡 **Recommended: Multi-Agent Collaboration (`/teamwork-preview`)**
> 
> - **Rationale**: This project naturally decomposes into three independent tracks: **hybrid retrieval engine engineering**, **responsive frontend dashboard**, and **headless browser automated regression testing**. It demands adversarial verification (builder vs auditor). A multi-agent team ensures continuous parallel verification without bloating a single agent's context window.
> - **Recommended Model Tier**: **Gemini 3.8 Flash (High)** — The project involves vector index formulation, ranking algorithms, and state synchronization, requiring high reasoning depth to avoid architectural vulnerabilities.
> - **Turnkey Prompt** (Copy the block below, type `/teamwork-preview` in chat, and paste):
> 
> ```text
> Goal: Build an enterprise-grade RAG studio with hybrid search, interactive dashboard, and automated test suite.
> Team Roles:
>   - Backend Architect: Implement vector index, BM25 hybrid search, and ranking engine
>   - Frontend Engineer: Build responsive interactive dashboard workbench
>   - QA Verifier: Execute headless browser automated regression tests for API & UI workflows
> Environment Constraints:
>   - Confine all outputs to isolated directory; avoid destructive operations
> Acceptance Criteria:
>   - [ ] Backend hybrid retrieval pipeline passes unit and benchmark tests
>   - [ ] Frontend dashboard loads and displays search metrics in real time
>   - [ ] Automated browser tests pass with 0 console errors
> ```

---

*(The Agent proceeds with initial technical breakdown below...)*
