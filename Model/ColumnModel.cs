using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class ColumnModel
    {
        private string columnName;
        private string columnimgsrc;
        private string englishTitle;
        private string keyWordTitle;
        private string columnWord;
        private string keywordDes;
        private int sort;

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

        public string KeyWordTitle
        {
            get
            {
                return keyWordTitle;
            }

            set
            {
                keyWordTitle = value;
            }
        }

        public string ColumnWord
        {
            get
            {
                return columnWord;
            }

            set
            {
                columnWord = value;
            }
        }

        public string KeywordDes
        {
            get
            {
                return keywordDes;
            }

            set
            {
                keywordDes = value;
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
