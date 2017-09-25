namespace CollegeManagementSystem.Reports
{
    partial class frmFeeReport
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource3 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.rptFeeViewer = new Microsoft.Reporting.WinForms.ReportViewer();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnSearch = new System.Windows.Forms.Button();
            this.txtSearch = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.feeMasterBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.feeDataSet = new CollegeManagementSystem.FeeDataSet();
            this.feeMasterTableAdapter = new CollegeManagementSystem.FeeDataSetTableAdapters.FeeMasterTableAdapter();
            this.feeDetailsBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.feeDetailsTableAdapter = new CollegeManagementSystem.FeeDataSetTableAdapters.FeeDetailsTableAdapter();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.feeMasterBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.feeDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.feeDetailsBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // rptFeeViewer
            // 
            this.rptFeeViewer.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.rptFeeViewer.BackColor = System.Drawing.Color.LightSlateGray;
            reportDataSource3.Name = "FeeMasterDataSet";
            reportDataSource3.Value = this.feeMasterBindingSource;
            this.rptFeeViewer.LocalReport.DataSources.Add(reportDataSource3);
            this.rptFeeViewer.LocalReport.ReportEmbeddedResource = "CollegeManagementSystem.Reports.FeeMasterReport.rdlc";
            this.rptFeeViewer.Location = new System.Drawing.Point(12, 70);
            this.rptFeeViewer.Name = "rptFeeViewer";
            this.rptFeeViewer.Size = new System.Drawing.Size(907, 403);
            this.rptFeeViewer.TabIndex = 1;
            // 
            // groupBox1
            // 
            this.groupBox1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox1.Controls.Add(this.btnSearch);
            this.groupBox1.Controls.Add(this.txtSearch);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(907, 52);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Student Register Reports";
            // 
            // btnSearch
            // 
            this.btnSearch.Location = new System.Drawing.Point(423, 19);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(53, 23);
            this.btnSearch.TabIndex = 2;
            this.btnSearch.Text = "Search";
            this.btnSearch.UseVisualStyleBackColor = true;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // txtSearch
            // 
            this.txtSearch.Location = new System.Drawing.Point(100, 21);
            this.txtSearch.Name = "txtSearch";
            this.txtSearch.Size = new System.Drawing.Size(317, 20);
            this.txtSearch.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 24);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(88, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Search by Fee Id";
            // 
            // feeMasterBindingSource
            // 
            this.feeMasterBindingSource.DataMember = "FeeMaster";
            this.feeMasterBindingSource.DataSource = this.feeDataSet;
            // 
            // feeDataSet
            // 
            this.feeDataSet.DataSetName = "FeeDataSet";
            this.feeDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // feeMasterTableAdapter
            // 
            this.feeMasterTableAdapter.ClearBeforeFill = true;
            // 
            // feeDetailsBindingSource
            // 
            this.feeDetailsBindingSource.DataMember = "FeeDetails";
            this.feeDetailsBindingSource.DataSource = this.feeDataSet;
            // 
            // feeDetailsTableAdapter
            // 
            this.feeDetailsTableAdapter.ClearBeforeFill = true;
            // 
            // frmFeeReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(931, 485);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.rptFeeViewer);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Name = "frmFeeReport";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Fee Report";
            this.Load += new System.EventHandler(this.frmFeeReport_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.feeMasterBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.feeDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.feeDetailsBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer rptFeeViewer;
        private FeeDataSet feeDataSet;
        private System.Windows.Forms.BindingSource feeMasterBindingSource;
        private FeeDataSetTableAdapters.FeeMasterTableAdapter feeMasterTableAdapter;
        private System.Windows.Forms.BindingSource feeDetailsBindingSource;
        private FeeDataSetTableAdapters.FeeDetailsTableAdapter feeDetailsTableAdapter;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.TextBox txtSearch;
        private System.Windows.Forms.Label label1;
    }
}