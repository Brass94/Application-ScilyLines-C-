using CLUtilesTextes;
namespace TestProject1
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestCompteCaractere()
        {
            Assert.AreEqual(2, AnalyseTexte.CompteCaractere("bonjour", 'o'));
        }
       
        [TestMethod]

        public void TestPremierCaractere()
        {
            Assert.IsTrue(AnalyseTexte.PremierCaractere("bonjour",'b'));
            Assert.IsFalse(AnalyseTexte.PremierCaractere("bonjour", 'o'));
        }

    }
}