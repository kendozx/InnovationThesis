using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InnovationThesis.Model
{
    public class EvalResults
    {
        public static double weight_u1 = 4.0;
        public static double weight_u2 = 3.0;
        public static double weight_u3 = 2.0;
        public static double weight_u4 = 1.0;

        public string evalId { get; set; }
        public string username { get; set; }
        public DateTime evalDate { get; set; }
        public string ans_1b { get; set; }
        public string ans_1b_oth { get; set; }

        public string ans_04u1_01 { get; set; }
        public string ans_04u1_02 { get; set; }
        public string ans_04u1_03 { get; set; }
        public string ans_04u1_04 { get; set; }
        public string ans_04u1_05 { get; set; }
        public string ans_04u1_06 { get; set; }
        public string ans_04u1_07 { get; set; }
        public string ans_04u1_08 { get; set; }
        public string ans_04u1_09 { get; set; }
        public string ans_04u1_10 { get; set; }
        public string ans_04u1_11 { get; set; }
        public string ans_04u1_12 { get; set; }
        public string ans_04u1_13 { get; set; }
        public string ans_04u1_14 { get; set; }
        public string ans_04u1_15 { get; set; }
        public string ans_04u1_16 { get; set; }
        public string ans_04u1_17 { get; set; }
        public string ans_04u1_18 { get; set; }
        public string ans_04u1_19 { get; set; }
        public string ans_04u1_20 { get; set; }

        public string ans_04u2_01 { get; set; }
        public string ans_04u2_02 { get; set; }
        public string ans_04u2_03 { get; set; }
        public string ans_04u2_04 { get; set; }
        public string ans_04u2_05 { get; set; }
        public string ans_04u2_06 { get; set; }

        public string ans_04u3_01 { get; set; }
        public string ans_04u3_02 { get; set; }
        public string ans_04u3_03 { get; set; }
        public string ans_04u3_04 { get; set; }
        public string ans_04u3_05 { get; set; }
        public string ans_04u3_06 { get; set; }
        public string ans_04u3_07 { get; set; }

        public string ans_04u4_01 { get; set; }
        public string ans_04u4_02 { get; set; }
        public string ans_04u4_03 { get; set; }
        public string ans_04u4_04 { get; set; }
        public string ans_04u4_05 { get; set; }
        public string ans_04u4_06 { get; set; }
        public string ans_04u4_07 { get; set; }
        public string ans_04u4_08 { get; set; }
        public string ans_04u4_09 { get; set; }
        public string ans_04u4_10 { get; set; }
        public string ans_04u4_11 { get; set; }
        public string ans_04u4_12 { get; set; }
        public string ans_04u4_13 { get; set; }
        public string ans_04u4_14 { get; set; }
        public string ans_04u4_15 { get; set; }

        public string ans_11 { get; set; }
        public string ans_12_01 { get; set; }
        public string ans_12_02 { get; set; }
        public string ans_12_03 { get; set; }
        public string ans_12_04 { get; set; }
        public string ans_12_05 { get; set; }
        public string ans_12_06 { get; set; }

        public string ans_04u1
        {
            get
            {
                string sVal = ans_04u1_01 + ans_04u1_02 + ans_04u1_03 + ans_04u1_04 + ans_04u1_05 +
                              ans_04u1_06 + ans_04u1_07 + ans_04u1_08 + ans_04u1_09 + ans_04u1_10 +
                              ans_04u1_11 + ans_04u1_12 + ans_04u1_13 + ans_04u1_14 + ans_04u1_15 +
                              ans_04u1_16 + ans_04u1_17 + ans_04u1_18 + ans_04u1_19 + ans_04u1_20;
                return sVal;
            }
        }

        public string ans_04u2
        {
            get
            {
                string sVal = ans_04u2_01 + ans_04u2_02 + ans_04u2_03 + ans_04u2_04 + ans_04u2_05 +
                              ans_04u2_06;
                return sVal;
            }
        }

        public string ans_04u3
        {
            get
            {
                string sVal = ans_04u3_01 + ans_04u3_02 + ans_04u3_03 + ans_04u3_04 + ans_04u3_05 +
                              ans_04u3_06 + ans_04u3_07;
                return sVal;
            }
        }

        public string ans_04u4
        {
            get
            {
                string sVal = ans_04u4_01 + ans_04u4_02 + ans_04u4_03 + ans_04u4_04 + ans_04u4_05 +
                              ans_04u4_06 + ans_04u4_07 + ans_04u4_08 + ans_04u4_09 + ans_04u4_10 +
                              ans_04u4_11 + ans_04u4_12 + ans_04u4_13 + ans_04u4_14 + ans_04u4_15;
                return sVal;
            }
        }

        public string ans_12
        {
            get
            {
                string sVal = ans_12_01 + ans_12_02 + ans_12_03 + ans_12_04 + ans_12_05 +
                              ans_12_06;
                return sVal;
            }
        }

        public double average_u1
        {
            get
            {
                double sum = Convert.ToInt32(ans_04u1_01) + Convert.ToInt32(ans_04u1_02) + Convert.ToInt32(ans_04u1_03) + Convert.ToInt32(ans_04u1_04) + Convert.ToInt32(ans_04u1_05) +
                             Convert.ToInt32(ans_04u1_06) + Convert.ToInt32(ans_04u1_07) + Convert.ToInt32(ans_04u1_08) + Convert.ToInt32(ans_04u1_09) + Convert.ToInt32(ans_04u1_10) +
                             Convert.ToInt32(ans_04u1_11) + Convert.ToInt32(ans_04u1_12) + Convert.ToInt32(ans_04u1_13) + Convert.ToInt32(ans_04u1_14) + Convert.ToInt32(ans_04u1_15) +
                             Convert.ToInt32(ans_04u1_16) + Convert.ToInt32(ans_04u1_17) + Convert.ToInt32(ans_04u1_18) + Convert.ToInt32(ans_04u1_19) + Convert.ToInt32(ans_04u1_20);
                return sum / 20;
            }
        }

        public double average_u2
        {
            get
            {
                double sum = Convert.ToInt32(ans_04u2_01) + Convert.ToInt32(ans_04u1_02) + Convert.ToInt32(ans_04u2_03) + Convert.ToInt32(ans_04u2_04) + Convert.ToInt32(ans_04u2_05) +
                             Convert.ToInt32(ans_04u2_06);
                return sum / 6;
            }
        }

        public double average_u3
        {
            get
            {
                double sum = Convert.ToInt32(ans_04u3_01) + Convert.ToInt32(ans_04u3_02) + Convert.ToInt32(ans_04u3_03) + Convert.ToInt32(ans_04u3_04) + Convert.ToInt32(ans_04u3_05) +
                             Convert.ToInt32(ans_04u3_06) + Convert.ToInt32(ans_04u3_07);
                return sum / 7;
            }
        }

        public double average_u4
        {
            get
            {
                double sum = Convert.ToInt32(ans_04u4_01) + Convert.ToInt32(ans_04u4_02) + Convert.ToInt32(ans_04u4_03) + Convert.ToInt32(ans_04u4_04) + Convert.ToInt32(ans_04u4_05) +
                             Convert.ToInt32(ans_04u4_06) + Convert.ToInt32(ans_04u4_07) + Convert.ToInt32(ans_04u4_08) + Convert.ToInt32(ans_04u4_09) + Convert.ToInt32(ans_04u4_10) +
                             Convert.ToInt32(ans_04u4_11) + Convert.ToInt32(ans_04u4_12) + Convert.ToInt32(ans_04u4_13) + Convert.ToInt32(ans_04u4_14) + Convert.ToInt32(ans_04u4_15);
                return sum / 15;
            }
        }

        public double totalScore
        {
            get
            {
                double score = (average_u1 * weight_u1) + (average_u2 * weight_u2) + (average_u3 * weight_u3) + (average_u4 * weight_u4);
                return Math.Round(score * 2);
            }
        }
    }
}