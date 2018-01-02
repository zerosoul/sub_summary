<section>
    <section>
        <h2>环境即基础</h2>
        <q>
            “Machine Repeats,Human Creates”
        </q>
    </section>
    
    <section>
        <h2>Docker</h2>
        <img class="fragment" src="../assets/images/docker.jpg" alt="">
        
    </section>
    <section>
        <img src="../assets/images/docker-vs-vm.jpg" alt="">
        
    </section>
    <section>
        <h2>直接对比</h2>
        <table>
            <thead>
                <tr>
                    <th>特性</th>
                    <th><span class="hl">Docker</span></th>
                    <th>VM</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>启动速度</td>
                    <td><span class="hl">秒级</span></td>
                    <td>分钟级</td>
                </tr>
                <tr>
                    <td>硬盘使用</td>
                    <td><span class="hl">MB</span></td>
                    <td>GB</td>
                </tr>
                <tr>
                    <td>性能</td>
                    <td><span class="hl">接近原生</span></td>
                    <td>弱于</td>
                </tr>
                <tr>
                    <td>系统支持量</td>
                    <td><span class="hl">单机支持上千容器</span></td>
                    <td>一般十几个</td>
                </tr>
            </tbody>
        </table>
        <aside class="notes">
            无论是性能、效率、还是资源占用上，比传统虚拟机都有非常明显的优势。<br>
            当然，对于开发流程而言，要求不仅限于性能、效率和资源占用。  <br>
            还要考虑制作、分发、部署、管理是否方便快捷、是否可以自动化。 <br>
            这些通过Docker都可以让流程更高效，机器干机器干的事，人干人该干的事。 <br>
            降低了应用环境的管理成本，就可以投入更多的精力到更有价值的事情上，比如需求消化，关注代码质量。 <br>
        </aside>
    </section>
    <section>
        <h2>基本概念</h2>
        <p>Image</p>
        <p>Container</p>
        <p>Repository</p>
        <aside class="notes">
            镜像：
            就是一个只读的模板。 <br>
            可以包含一个完整的 ubuntu 操作系统环境，里面仅安装了 Apache 或用户需要的其它应用程序。 <br>
            镜像可以用来创建容器。 <br>
            Docker 提供了一个很简单的机制来创建镜像或者更新现有的镜像，用户甚至可以直接从其他人那里下载一个已经做好的镜像来直接使用。 <br>

            容器： <br>
            可以把容器看做是一个精简的 Linux 环境和运行在其中的应用程序。(root用户权限、进程空间、用户空间和网络空间等） <br>

            仓库： <br>
            集中存放镜像文件的场所。可以远程拉取，也可以建立私有仓库。类似gtihub机制 <br>
        </aside>
    </section>
    <section>
        <h2>本地开发环境</h2>
        <ul>
            <li>服务器：<a href="https://www.docker.com/">Docker</a>搭建</li>
            <li>代码编辑器：<a href="https://www.sublimetext.com/">Sublime</a> + 插件
                <ul>
                    <li>
                        <a href="https://github.com/amitsnyderman/sublime-smarty">sublime-smarty</a>
                    </li>
                    <li>
                        <a href="https://packagecontrol.io/packages/PHP%20Syntax%20Checker">PHP Syntax Checker</a>
                    </li>
                </ul>
            </li>
            <li>静态页开发：<a href="https://www.npmjs.com/package/slice-cli">slice-cli</a></li>
            <li>数据库工具：Navicat Premium</li>
            <li>SVN工具：Cornerstone</li>
        </ul>
        <aside class="notes">
            开发环境：本地，dev，沙盒，测试，线上...
            关注开发环境，即是注重开发体验的体现。
            本地修改，相应改动立等可见 vs 本地修改，提交svn，然后刷新页面。

        </aside>
    </section>
    <section>
        <h2>本地开发 vs DEV开发</h2>
        <table>
            <thead>
                <tr>
                    <th></th>
                    <th><span class="hl">本地开发</span></th>
                    <th>DEV开发</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>修改速度</td>
                    <td><span class="hl">立等可见</span></td>
                    <td>需提交SVN</td>
                </tr>
                <tr>
                    <td>灵活度</td>
                    <td><span class="hl">环境可控</span></td>
                    <td>环境不可控</td>
                </tr>
                <tr>
                    <td>影响范围</td>
                    <td><span class="hl">仅限于本机</span></td>
                    <td>团队共用开发环境</td>
                </tr>
            </tbody>
        </table>
    </section>
   
 
    <section>
        参考资料：
        <p>官网：<a href="https://www.docker.com/">https://www.docker.com/</a></p>
    </section>
</section>