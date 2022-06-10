using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class NewsModel
    {

        private string newsTitle;
        private string newsCountent;
        private string newsDate;
        private string newsAuthor;
        private string newsDesc;
        private string newsimgsrc;
        private int newsRate;      
        private int newsClick;
        private int newsColumn;
        public string NewsTitle
        {
            get
            {
                return newsTitle;
            }

            set
            {
                newsTitle = value;
            }
        }

        public string NewsCountent
        {
            get
            {
                return newsCountent;
            }

            set
            {
                newsCountent = value;
            }
        }

        public string NewsDate
        {
            get
            {
                return newsDate;
            }

            set
            {
                newsDate = value;
            }
        }

        public string NewsAuthor
        {
            get
            {
                return newsAuthor;
            }

            set
            {
                newsAuthor = value;
            }
        }

        public string NewsDesc
        {
            get
            {
                return newsDesc;
            }

            set
            {
                newsDesc = value;
            }
        }

        public string Newsimgsrc
        {
            get
            {
                return newsimgsrc;
            }

            set
            {
                newsimgsrc = value;
            }
        }

        public int NewsRate
        {
            get
            {
                return newsRate;
            }

            set
            {
                newsRate = value;
            }
        }       

        public int NewsClick
        {
            get
            {
                return newsClick;
            }

            set
            {
                newsClick = value;
            }
        }

        public int NewsColumn
        {
            get
            {
                return newsColumn;
            }

            set
            {
                newsColumn = value;
            }
        }
    }
}
