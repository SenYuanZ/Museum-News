using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class ColumnListMode
    {
        private int iD;
        private string columnName;
        private string columnimgsrc;
        private string englishTitle;
        private string columnKeyword;
        private string keyWordDes;
        private int sort;

        public int ID
        {
            get
            {
                return iD;
            }

            set
            {
                iD = value;
            }
        }

        public string ColumnName
        {
            get
            {
                return columnName;
            }

            set
            {
                columnName = value;
            }
        }

        public string Columnimgsrc
        {
            get
            {
                return columnimgsrc;
            }

            set
            {
                columnimgsrc = value;
            }
        }

        public string EnglishTitle
        {
            get
            {
                return englishTitle;
            }

            set
            {
                englishTitle = value;
            }
        }

        public string ColumnKeyword
        {
            get
            {
                return columnKeyword;
            }

            set
            {
                columnKeyword = value;
            }
        }

        public string KeyWordDes
        {
            get
            {
                return keyWordDes;
            }

            set
            {
                keyWordDes = value;
            }
        }

        public int Sort
        {
            get
            {
                return sort;
            }

            set
            {
                sort = value;
            }
        }
    }
}
