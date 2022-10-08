<%--
  Created by IntelliJ IDEA.
  User: 吴光清
  Date: 2022/2/8
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<template>
    <div class="home">

        <div style="display: flex;margin: 0px; padding: 0px 0px 5px 0px;">

            <!-- 添加一个搜索按钮，当按下回车键后就开始调用seatch（）方法进行查询操作 -->

            <el-input placeholder="请输入用户名进行搜索，可以直接回车搜索..."

                      @clear="seatch"

                      prefix-icon="el-icon-search"

                      style="width: 350px;margin-left: 10px"

                      clearable

                      :clear="seatch"

                      v-model="keywords"

                      @keydown.enter.native="seatch"  >

            </el-input>

        </div>

        <div>

            <!--表格绑定要显示的数据seatch()方法,而seatch()方法数据来源是tableData是在script标签中定义的数组对象 -->

            <el-table

                    :data="seatch()"

                    style="width: 100%"

                    max-height="250">

                <!-- 下面四个el-table-column是用来定表格的头 -->

                <el-table-column

                        fixed

                        prop="id"

                        label="编号"

                        width="150">

                </el-table-column>

                <el-table-column

                        prop="name"

                        label="姓名"

                        width="120">

                </el-table-column>

                <el-table-column

                        prop="pass"

                        label="密码"

                        width="120">

                </el-table-column>

                <el-table-column

                        fixed="right"

                        label="操作"

                        width="120">

                    <!-- 在第四列中定义了两个按钮，分别用于对相应的行的数据进行编辑和删除操作，它们相应的事件是在script标签中定义 -->

                    <template slot-scope="scope">

                        <!-- 按钮的添加用户事件 -->

                        <el-button

                                @click.native.prevent="add()"

                                type="text"

                                size="small">

                            添加

                        </el-button>

                        <!-- 按钮的添加用户事件，事件处理函数edit(),其中scope.$index这是按钮所在表格行的位置，tableData[scope.$index]是数据行在数据数组中的内容 -->

                        <el-button

                                @click.native.prevent="edit(scope.$index,tableData[scope.$index])"

                                type="text"

                                size="small">

                            编辑

                        </el-button>

                        <el-button

                                @click.native.prevent="deleteRow(scope.$index,tableData[scope.$index])"

                                type="text"

                                size="small">

                            移除

                        </el-button>

                    </template>

                </el-table-column>

            </el-table>

            <!-- 创建分页开始 -->

            <div style="display:flex;justify-content:flex-end ">

                <el-pagination

                        class="pull-right clearfix"

                        @size-change="handleSizeChange"

                        @current-change="handleCurrentChange"

                        :current-page.sync="pageNo"

                        :page-sizes="pageSizesList"

                        :page-size.sync="pageSize"

                        layout="total, sizes, prev, pager, next, jumper"

                        :total="totalDataNumber">

                </el-pagination>



            </div>

            <!-- 创建分页结束 -->

            <!--弹出层开始-->

            <div>

                <el-dialog

                        :title="dialogTitle"

                        :visible.sync="dialogVisible"

                        width="50%"

                        :close-on-click-modal="false">

                    <el-form ref="form" :model="users" label-width="80px">

                        <el-form-item label="用户名">

                            <el-input placeholder="请输入用户名" v-model="users.name"></el-input>

                        </el-form-item>

                        <el-form-item label="密码">

                            <el-input v-model="users.pass" placeholder="请输入密码" show-password></el-input>

                        </el-form-item>

                        <el-form-item>

                            <el-button type="primary" @click="onSubmit">{{subminTitle}}</el-button>

                            <el-button type="primary" @click="dialogVisible=false">取消</el-button>

                        </el-form-item>

                    </el-form>

                </el-dialog>

            </div>

            <!--弹出层结束-->

        </div>

    </div>

</template>
</body>
</html>
