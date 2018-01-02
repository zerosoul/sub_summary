<section>
    <h2>改进</h2>
</section>
<section>
    <h3>删掉了<span class="hl">巨量</span>无用代码</h3>
    <p class="fragment fade-up">70+M <span class="hl"> ==> </span> 20+M</p>
    <aside class="notes">
        1M的纯代码就相当大了
    </aside>
</section>
<section>
    <section>
        <h3>数据库的使用方式</h3>
        <p class="fragment fade-up">mysqli <span class="hl"> ==> </span> PDO（Medoo）</p>
        <aside class="notes">
            PDO优势<br>
            1:PDO真正的以底层实现的统一接口数库操作接口，不管后端使用的是何种数据库，如果代码封装好了以后，应用层调用基本上差不多的，当后端数据库更换了以后，应用层代码基本不用修改. <br>

            2:支持更高级的DB特性操作，如：存储过程的调度等,mysql原生库是不支持的. <br>

            3:PHP官方主推，兼容性稳定性必然要高于MySQL Extension,可以直接使用 pecl upgrade pdo 命令升级. <br>

            4:可以防止SQL注入，确保数据库更加安全 <br>
            真正感到爽的是：可以以OO方式来存取数据，不用自己拼sql语句，减少了出错的可能性，更易维护。
        </aside>
    </section>
    
    <section>
        <h4>初始化</h4>
        <img src="../assets/images/php-new-1.png" alt="">
        <img src="../assets/images/php-new-2.png" alt="">
        <aside class="notes">
            默认不是长连接，若要使用数据库长连接，需要在最后加如下参数
        </aside>
    </section>
    <section>
        <h4>常用操作</h4>
        <pre><code class="hljs">PDO::query()</code></pre> 
        <pre><code class="hljs">PDO::exec() </code></pre>
        <pre><code class="hljs">PDO::lastInsertId()</code></pre>
        <pre><code class="hljs">PDOStatement::fetch()</code></pre>
        <pre><code class="hljs">PDOStatement::fetchAll()</code></pre>
        <aside class="notes">
            PDO::query() 主要是用于有记录结果返回的操作，特别是SELECT操作<br>
            PDO::exec() 主要是针对没有结果集合返回的操作，如INSERT、UPDATE等操作<br>
            PDO::lastInsertId() 返回上次插入操作，主键列类型是自增的最后的自增ID<br>
            PDOStatement::fetch() 是用来获取一条记录<br>
            PDOStatement::fetchAll() 是获取所有记录集到一个中<br>
        </aside>
    </section>
    <section>
        <h4>查询</h4>
        <img src="../assets/images/php-query.png" alt="">
    </section>
    <section>
        <h4>插入</h4>
        <img src="../assets/images/php-insert.png" alt="">
    </section>
    <section>
        <h3>力荐</h3>
        <img src="../assets/images/medoo.png" alt="">
    </section>
</section>
<section>
    <section>
        <h3>类库的加载方式</h3>
        <p class="fragment fade-up">框架代码加载 <span class="hl">==></span> Composer</p>
    </section>
    <section>
        <img src="../assets/images/load-lib-old.png" alt="">
    </section>
    <section>
        <img src="../assets/images/load-lib.png" alt="">
    </section>
</section>
    
<section>
    <h3>开发体验</h3>
    <p class="fragment fade-up">SVN提交看效果 <span class="hl">==></span> Docker本地开发</p>
    <img class="fragment" src="../assets/images/docker-containers.png" alt="">
</section>
    <section>
        <h3>后台颜值&交互</h3>
        <p class="fragment fade-up">Bootstrap-UI <span class="hl">==></span> Semantic-UI</p>
        <p class="fragment fade-up">同步操作，刷新页面 <span class="hl">==></span> 异步操作，即时响应</p>
    </section>
    <section>
        <h3>同一功能，不同的实现</h3>
        <table>
            <thead>
                <tr>
                    <th></th>
                    <th>FS3</th>
                    <th>CMS</th>
                </tr>
            </thead>
            <tbody>
                <tr class="fragment">
                    <td>分页</td>
                    <td><span class="hl">结构化</span></td>
                    <td>PHP拼接HTML</td>
                </tr>
                <tr class="fragment">
                    <td>手工</td>
                    <td><span class="hl">标识</span></td>
                    <td>模块</td>
                </tr>
                <tr class="fragment">
                    <td>表单验证</td>
                    <td><span class="hl">自动化、可配置</span></td>
                    <td>手写</td>
                </tr>
                <tr class="fragment">
                    <td>缩略图上传</td>
                    <td><span class="hl">多张、可配置</span></td>
                    <td>单张</td>
                </tr>
            </tbody>
        </table>
        <aside class="notes">
            分页：body数据的结构化<br>
            手工：更灵活，更一致，减少了理解成本和数据库表<br>
            表单验证：验证方式和提示方式一致，增强了体验的同时也精简了代码<br>
            缩略图：为什么不可以支持多张
        </aside>
    </section>