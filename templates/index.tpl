{{extends file="./_meta.tpl"}}
{{block name="TITLE"}}分站项目总结{{/block}}
{{block name="view"}}
    <style>
        .slides .fragment.new-name{
            font-size: 4rem;
            color: indianred;
        }
        .hl{
            color: #dd5566 !important;
        }
        #new-stuff img{
            max-height: 60px;
            border: none;
        }
        #new-stuff td{
            vertical-align: middle;
        }
    </style>
    <div class="reveal">
        <div class="slides">
            {{include file="./partial/_title.tpl"}}
            {{include file="./partial/_sub_title.tpl"}}
            {{include file="./partial/_fs3_intro.tpl"}}
            {{include file="./partial/_pros.tpl"}}
            <section>
                <h2>新东西</h2>
                <table id="new-stuff">
                    <tbody>
                        <tr>
                            <td>Docker</td>
                            <td><img src="../assets/images/docker.jpg" alt=""></td>
                        </tr>
                        <tr>
                            <td>Composer</td>
                            <td><img src="../assets/images/composer.png" alt=""></td>
                        </tr>
                        <tr>
                            <td>Medoo</td>
                            <td><img src="../assets/images/medoo.png" alt=""></td>
                        </tr>
                        <tr>
                            <td>Semantic-UI</td>
                            <td><img src="../assets/images/semantic.png" alt=""></td>
                        </tr>
                    </tbody>
                </table>
            </section>

            
            <section>
                <h3>三句话</h3>
                <h4 class="fragment">
                    “Machine <span class="hl">Repeats</span>,Human <span class="hl">Creates</span>.”
                </h4>
                <br>
                <h4 class="fragment">
                    “Simple Short Straightforward <span class="hl">(3S原则)</span>”
                </h4>
                <br>
                <h4 class="fragment">
                    “<span class="hl">脱离业务场景</span>谈技术的优劣都是耍流氓”
                </h4>
            </section>
            

            {{include file="./partial/_env.tpl"}}

            {{include file="./partial/_code.tpl"}}

            {{include file="./partial/_think.tpl"}}
            <section>
                <h3>环境即基础</h3>
                <h3>代码即表达</h3>
                <h3>思维即能力</h3>
                <h3 class="fragment">态度即潜力</h3>
            </section>
            {{include file="./partial/_thanks.tpl"}}
            {{include file="./partial/_goodbye.tpl"}}
        </div>
    </div>
{{/block}}
{{block name="script"}}
<script src="../assets/revealjs/lib/js/head.min.js"></script>
<script src="../assets/revealjs/js/reveal.js"></script>

<script>
    Reveal.initialize({
        dependencies: [
            { src: '../assets/revealjs/plugin/markdown/marked.js' },
            { src: '../assets/revealjs/plugin/markdown/markdown.js' },
            { src: '../assets/revealjs/plugin/notes/notes.js', async: true },
            { src: '../assets/revealjs/plugin/highlight/highlight.js', async: true, callback: function() { hljs.initHighlightingOnLoad(); } }
        ]
    });
    $(document).ready(function() {
      $('pre code').each(function(i, block) {
        hljs.highlightBlock(block);
      });
    });
</script>
{{/block}}
